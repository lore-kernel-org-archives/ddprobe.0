Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D28921FA1
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 07:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656747412;
	h=To:Subject:From:Message-Id:Date;
	bh=DVahatAAVl3kr0sifOdi1qmjOjqGufGGGb3UcWJQ6Xo=;
	b=VTLkM6iabvYKKCpMdYWlYPWLXy20tV1c0ysTxf6/054MSdIycLfSHrCUz+QQ2Zgy
	qp5OgWsbFcIdlx/kwlXxVc/fgsXIQ4evxio5fAHAOBj4fSi6+eP6NTpXZug3z+YVcrF
	PqgH14j22w8r2ImUoJ0KCpqpmVIZxXhLuJQB1ot4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656747412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DVahatAAVl3kr0sifOdi1qmjOjqGufGGGb3UcWJQ6Xo=;
	b=PgyqcEwJMBshWFSVTZJ1rLdQ0TIHAxHthr+xq8CAkL4raDULXpGpkWUaD0XbcA6S
	/e4VSomVywpuf0xPNxZi4l6p0MxAsWpaD8DT2xQ35GT1xfhAQoDa8RqX0BjhGqwJ+6A
	O/i3Uslbx1p35EU6QyRfucnbFALUpxGjPeLNqC3o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bdd74b2c-e9248292-c501-4239-b98d-05df01b5bfb4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 304ecc092873cd5f5aa23362d293234a345c8c08f4479260164fdbe885d740e7
Date: Sat, 2 Jul 2022 07:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656747412
