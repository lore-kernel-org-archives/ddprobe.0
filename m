Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18EEF362
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 05:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654838399;
	h=To:Subject:From:Message-Id:Date;
	bh=mNiYbfvMZHETesrSBfXCbfCHj4wf79pyrXpcaTJDJ7A=;
	b=RGvReyInN8P1cH9LCe6SCOj7+o738sQmgOcxIQlz72bkLHT8I3gJ1/0b+H+tAP3/
	JBiUjMvWEI5XFYeSJKP1oRw7J25DWGAYP3FwPoIgUzVGKnLqoM11J0zrw5CxsnqVqbn
	7LNoQ2nVso0d+javMpsL9XYc8/+AvLfnnneY26BY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654838399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mNiYbfvMZHETesrSBfXCbfCHj4wf79pyrXpcaTJDJ7A=;
	b=Ps45yAiCBwDrdIKnhh9EF1VcWfwOMGTlgEZ4tnFhsz467JP1QM+1SiEOvxk4UhbF
	DPCteEXr5Q7NyICFSwYQdXYmlmjcyb8MeQe/7SuYBXdZVdEf26JtF1Dwv5APwx5hOfa
	XK6TM0V0YlNSvzccsiOo42SlpPoF/KFLfJn6fExY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814c0e1159-dfd5346c-a49e-4440-9d89-433e14abd934-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c89f8c806f33eea38d18542a0e98eb6531551c8cedeb91bf4e3f22435e067f62
Date: Fri, 10 Jun 2022 05:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654838399
