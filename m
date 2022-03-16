Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 980C338C2
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 14:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647440484;
	h=To:Subject:From:Message-Id:Date;
	bh=u8EYNnhpWyBVJ1AHC9RKaFPZeGi2SqJiznoOkTsjnO4=;
	b=K8UjDnrFbNwp0i0FcAvzT2L7GsEqP2+cefrJwAQNoToH3HCPVmmJ03VvbqX1qbrK
	4nsTrc2RpxxDLRdWljkgW/xsykdajS5lfJ+WHZt0lXCqovWrpGR9SHiWIsGbVPBXgzl
	fTMd8ACC76bOMHj9g2Mm7n1v2xQYP68xhajeSGxE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647440484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u8EYNnhpWyBVJ1AHC9RKaFPZeGi2SqJiznoOkTsjnO4=;
	b=VV2KEf5wzMsIQQCZgttwnTPT8HBs5TcMwN5CHhNU/ojzL8CWmH+wBhwmZe9AAKbz
	chG0H99nXeaDAFf8Ck4jhgJa1rftEyaDIqEyjMSdYMDiaW04ZtzxUay7FVuJ6dSOj86
	s7GgFkbq0WUjGFAo6RJl6d95vP9sqzO2oYw/xx5M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f931ad991-143f1853-3804-426d-888a-ac1b66a7c6e6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 713378f15aa250f976508e6508f4a0629c6869484f06543a9ee36356d168ef5b
Date: Wed, 16 Mar 2022 14:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647440484
