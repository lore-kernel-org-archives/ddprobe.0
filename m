Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED13628
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 01:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654132619;
	h=To:Subject:From:Message-Id:Date;
	bh=kPZxJYMwdoBMZPsO5S8f7IukWB8+7vhxo7a1i1zpoF4=;
	b=J3ePR+YnJIOij56g1Z7P6i2xZeMj7xWZfW3MhDYBep7v5WEqtqnjAT/UhtBaKxXz
	aiKQtji01g2y+tZLcprfBjM/Ww7F0WG/y1xVTqe/Ad3ow+WiP8xznad4krTWdf55Ajv
	Mr/KrGzEJsU0fK0GCnRNwXWny1oD4Lfg+JVfAW5c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654132619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kPZxJYMwdoBMZPsO5S8f7IukWB8+7vhxo7a1i1zpoF4=;
	b=Lz28pcATYCVtZqcAqcaJ6m63O+GlDmb3KoH7hAqqeRDjmd3tnVOiqY8VMKEHCRXg
	JlCE2bq5VDxYsTZtUoSHAdkK7poKWC9BzPzmnDuPkdhGcKIcUobdstpNLlF5IjQTpKp
	PfCCTfaoSV5+eueVJECpAQ0MVeqXBHQ5vfgERVh0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018121fcb80d-7a0dd3d4-9a32-4020-8faa-ab8a5c6ecb57-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1db4ca84185865e77d669f05def39fc17e5ad19b2188eca87bd776aed30f34f
Date: Thu, 2 Jun 2022 01:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654132619
