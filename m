Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 606BF3D9C
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659099652;
	h=To:Subject:From:Message-Id:Date;
	bh=wh1hJlRVVCBMbkymQLSkQDzImqlMOISPF74wyeHTN5Q=;
	b=SBWROZ55+4KfKXIl5rpwTp1WwSJH4GNFcDfYhLUgY9nAfcH4OoS1DtGp240f/YaQ
	OkfsgHjWUXnH1vL6U4N7iY9Y8qe5G1GhjXURhtUHWUKVkmeeOvJ6113qKGKCCz3BrdQ
	h5b2QnI1urobfQy5GnbAGPXTjNlmpzqskyjdVFig=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659099652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wh1hJlRVVCBMbkymQLSkQDzImqlMOISPF74wyeHTN5Q=;
	b=Hcl2d+cpbx1HE3n8siXcg2Ju8GRowPh6lQee+Swzk4TmXXoZv51bS4jklG7n8JgF
	BJnh4HlUYaoSrvLjUC0JrqR5iLVaP7pzS4Qx/m1vHKSJZ31wrw5JT9y/NdhxGcNSWJl
	/tkaf01pNHVQnulfLXtswxwSLT+0GguQnBOcyiUA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824a0ba19c-261fa065-51a0-485b-b104-332a5425eb97-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 76df54bf1885a2a59fed160ce9258a153bed9685198587b511a7425732ceea90
Date: Fri, 29 Jul 2022 13:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659099652
