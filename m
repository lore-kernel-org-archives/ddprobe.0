Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4038E6AB1
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659651652;
	h=To:Subject:From:Message-Id:Date;
	bh=Qp3czATVJO1FQ9wJvzHdDGiO+BI6Kf1Tv9ZDGvlbgFc=;
	b=PhKLTwCyyMfNr2anAQGMdT65nCLpuHHIVpzUrTK2taY2+/ZKndxaYD1AISWwJMYl
	fRh166HPiBzzdwcdkEM+Q07oVPy6nqnwBUFwFoP7xgQwvC5/xkXMKFYoNBl8CcfkFpA
	2QdFlM7QbMJLXbj8QaxqyNX9qHVj8dnuQeTXMD/g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659651652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Qp3czATVJO1FQ9wJvzHdDGiO+BI6Kf1Tv9ZDGvlbgFc=;
	b=ds/ou97TkvYyfDJGxRn0XH3DIq6yBL4R76Mhm8SjP2/MFDfEgAmXKxg/klm9NOsF
	22YRYbKUPEp1+khZSdXhuwncAEGgW1QnlY4ieuZ9LNn6h3Qv3KNHvICTmsockYx4ohO
	c7jIkMmmwy+9u0vuqDYURyl4IRCzqOHrzWvFWhMg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826af27bdc-4a5c46e4-2de3-4350-8c23-20723f3c141f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8210a70c7eeefe9a9e23d94df73c20832044d00959ee4c49c5ea26da32e96678
Date: Thu, 4 Aug 2022 22:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659651652
