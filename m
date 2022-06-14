Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13A8B1376
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 00:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655167259;
	h=To:Subject:From:Message-Id:Date;
	bh=6dPszo7vFdA34GNi2D6dxxyshSqk9I0V1wAWQZGTfio=;
	b=evf0UbUp/8V4QTpct5tTF+cuK8N67h5fiou6cLHUbp+7I8a9iC3PPHPmVASYnCnj
	gtX0rCsOBBeLDZk7+cyFz1A/HZ878JAmuhgRT/9hyS0amk4ve5fOMgJi8vpJPrKwEGL
	se4uttvhtUzqKDmDYOaO45bCux5N+JeVTDinDO9U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655167259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6dPszo7vFdA34GNi2D6dxxyshSqk9I0V1wAWQZGTfio=;
	b=k0ZM1MNbyPFYXa5t1rmf4Kj8Xj9hXXvI/TJ/HsgFWOfUtnWY7q7I6rz1jPf6n/qS
	X09VNT36jg5S4kdG4Qnn8Nl9pfy2nXMIGDjpUkjAQpN4mTB1bFW1E18wrnWCKmti6cB
	tcKYY2JBpXAajNce/ivT/Qu9Zt0NNEiekA1bSRYU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815fa812a5-10469184-0cbc-4e75-8b03-2ce2bf62e74f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 54cda707a716e9ddbcd5f79312a2bd44875282570da4320ae3ab33987073f0fc
Date: Tue, 14 Jun 2022 00:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655167259
