Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0049181
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660263653;
	h=To:Subject:From:Message-Id:Date;
	bh=OuHvDro9LlqqdmVvid31z1JO9+zLFS+9aEVYvkLDxlw=;
	b=CfFs/3mCQZ0UJo/8xcKTmyTwhCC+juXqHktK8scMP5FHKAYrzGF7ytMltntbe++2
	s5HdTYsAC4jWG/DdrtTY6Vo0ur3SZlfMr7l+zjb/ii281IRiv1SejDHDg8Pjf455h29
	gd1mMaqnvmKu46/IP8nrtUMScJfDkVg5NcLPAGl4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660263653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OuHvDro9LlqqdmVvid31z1JO9+zLFS+9aEVYvkLDxlw=;
	b=RQfMjJw774029pnf6XkFcy30Q/QZBquETM/cEMlKZCclVAtQRH23VUgvBb0GdEpU
	rEtR9mGLUI1eH4zAscmitPEvN/lYklJ0QK66W5A4YKwzk4ElTKfucTklsnzp30l7aFf
	I0uheMOhOo4b51kYOGp6QTVVL5sh3R8HWfWO6Pa4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828f6cdcd6-55b61817-9e77-405c-8ede-299c1d8d1a11-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 45027639efc7d368f4eaad112fd8425fb8e2d56b770a56d14432ebdccb52b283
Date: Fri, 12 Aug 2022 00:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660263652
