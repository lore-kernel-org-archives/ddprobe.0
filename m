Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31BF810E9
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 01:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656640012;
	h=To:Subject:From:Message-Id:Date;
	bh=/qHOiMa2EWXYm+q18MB2HQBjo73O0OEIPXxn04l3H9U=;
	b=Do8a76YZq18UwaJgLZQeEGUouN5hKbYB7ZlqTN2CEJWvGaF4VrSu3tYY0iBBm0CP
	P431ifp9wfNqyqUCzvakgV4tWHcf4wK+duErzqTjh8pHQcA8UCfSj1DgLIBpI6vpBpf
	ShIQzMVuhRzayYpHU0cImyQonlboUMCYrDe86GmY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656640012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/qHOiMa2EWXYm+q18MB2HQBjo73O0OEIPXxn04l3H9U=;
	b=hIaO7RSFw+gpE/GEximhweRHHmdF61b7W498bFtZADPEAh8IcVYKGju76i9eM4Ms
	BoHBmcyw7S5wIHfH7DihbxhiqlifyDTXk6csHNNXJ5Oe3MK2COjQzmqsF4/04LlGEIs
	E9LjvZnOyIAyT8GWuSH6b8N/FeyO0/lGP47bZNKQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b7708027-421b0b1d-6fbb-4e52-86e2-2e38c129d430-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff3fced56b2ed166178044ec31443ebf1ecfa87d8ddacec606eee206adb59e66
Date: Fri, 1 Jul 2022 01:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656640012
