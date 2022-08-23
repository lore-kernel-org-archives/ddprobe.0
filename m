Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B998320D
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661271652;
	h=To:Subject:From:Message-Id:Date;
	bh=Ji9xtjpRtUr45DM6yS1vNxlf2nLl9deNMuWJ6ODYFsQ=;
	b=dBu1tQFbDqyKmhmzrcqp19MwoeG9sZ8OOWT0S/6KgILlFlH54Y23N6/kLxY315TF
	CrFXgA6kG8OdRkhqsvJvnqWwYB3EBXDyhNiApACXzl7gjWWnPYu6Yn0nAnRw9AMyebF
	+h5ginU8dsDYNPdDrCV71IkFhHOnntQkAYecw2wc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661271652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ji9xtjpRtUr45DM6yS1vNxlf2nLl9deNMuWJ6ODYFsQ=;
	b=V/uwU7XDxy3opSVGYBaeCc7eR3rkagXNDqldoD6oErwusIHTNeK6Ux1I4QqBcV9L
	EkjsUU18SToqpOw4/UGBad3Nrsenv2kQEcqprIrYXCoijiMm3wcVlR7/0rLr4zK+B3e
	2iVvrurFLcxr19Bxmmr9L1mU6exfwBV2di+gM7ew=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cb81b8bb-01edc7bc-1ea4-4ec3-a498-be39a35c4be3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 39ac692312f592e9eecf7c1267e3a1e5af536c02398b720ea62ba46799ade74d
Date: Tue, 23 Aug 2022 16:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661271652
