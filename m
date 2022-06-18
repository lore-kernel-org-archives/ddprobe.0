Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 108BB7B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 13:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655559179;
	h=To:Subject:From:Message-Id:Date;
	bh=24lMDQX8PelJzIYtleUKmMxE+YsOVF2Kfpj14WB4mfw=;
	b=b4ToyZJO4sad5cYMLayiDEhIr5XKCM+tSLdyYfhDzJ3W/BwDMHK+4+uuhRqOcqYW
	zVLUKCxMlASjmyJvf30bwzO24d2RpNsuI0KCFfCnhgW7b9D5ZrrVOd+TM+8v1a079Mh
	lUCQo/HRPCVCl0KzHtPKcd84tKbJd4prinU11Qhs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655559179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=24lMDQX8PelJzIYtleUKmMxE+YsOVF2Kfpj14WB4mfw=;
	b=KF/ykSScDciFYrUVoDUIXGLR57esucoohd/y+Kx7C9NWWhv7ja7ht4RxFvnVWYuA
	XyOyxbNZjVIv1kyH7IgRKA6OOm4RO7BlJGmET+i76LOvoALV7XohTZ/oz5UMUqu2WLz
	YpoTTRCHPQ/Cq73dMqbU9s27+rFMGuyqbsNSBMAc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018177044bf1-0380a073-62a2-474b-81f4-12379cedbf40-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3545805b908c64f4bd5456548fbdd5122e08cce50065994182b99e132adf4ec1
Date: Sat, 18 Jun 2022 13:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655559178
