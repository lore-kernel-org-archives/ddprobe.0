Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A62D7F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659444052;
	h=To:Subject:From:Message-Id:Date;
	bh=EKZtuQtGP4BuHwlP+CvCMENRKzlQ/aeld1wF7uLXDj0=;
	b=O6kzGBU3P+W3xA5HnWJ3rlWtqs3cT+ArUOfmEG90djNWXjX79Vq8gzZ7O/IfbtZW
	5s7v2XHn06sGJ/FrWv19CRbFN3khFVCTtzJjdISXdMvaKpez8yp1YwRyUT/h9Jamici
	f41ai4taSKWQBTzMEoJ/IeGd7EVw6oqBjfJTSNhE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659444052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EKZtuQtGP4BuHwlP+CvCMENRKzlQ/aeld1wF7uLXDj0=;
	b=eKZpJYMVntHCgJDrPc6jGWFW+TALVDEWU9dyZkEdv2d3EBTlDSOygMF5yfiYg/24
	QWdaVmmjzgdL0wl3GgX8YM6Ygmqr3P87zWK0SqksLaxrLvoLovoQKQAAwxmatyMwTau
	zN5AYuqBKM+Vux1YSMEyaL9rsJem+GBwRLCHyYiw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825e92c23a-6c936dc3-6716-400c-8718-01bf65295d71-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8dda63c0a5e7e96f7a284492e5bfd5469ea7162c46729f544db23840fa0ebd7d
Date: Tue, 2 Aug 2022 12:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659444052
