Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFCAD1FCF
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659912052;
	h=To:Subject:From:Message-Id:Date;
	bh=VG+M9h5UfvHDZGDxIKj9h+sfrLqXZNQYiTU93CrgKjA=;
	b=Q4qxm1alPD+H18SKtRRD+8nSoZVEA1Qqf3PDrBcsk76UshfV3eAeKBkAlwe1sX/A
	IcSRyeeppoDJ5CdroexlDPpBHAXOzKbTKD0NtmeYU0WUae+eKWZ6cOx+MQNDDFEBEGN
	ndwVwLV9KsUZBj6rYvzMPzDQuQvf3aJxgI/z82l4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659912052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VG+M9h5UfvHDZGDxIKj9h+sfrLqXZNQYiTU93CrgKjA=;
	b=GGn8Rs4g34Y1CkaQ8S8kqEAbdgsYW2rxKgQm6bHDYKzMrF7KsMpanv/EkFufW/kc
	8SxaD6vm3RVEA8Q3aItb0h/tsS3/pmhMn6e4UIBtCIQNWonnLGOhCT+CxSG272Tko0g
	49939OJ667thRkkUzjHlAsGKP8DOFxrO+MbpNVrU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827a77df35-94cea5a8-c662-4e44-9125-d4259b5c24ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6711783feb081fe1bb625e38648840693881ff44da85b8422decf7e85989985e
Date: Sun, 7 Aug 2022 22:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659912052
