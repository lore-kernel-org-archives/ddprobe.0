Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69A2C20EE
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660986652;
	h=To:Subject:From:Message-Id:Date;
	bh=vDa7khj5gGi0krmXPetE3xT3vcVZqN3TyNL/1HAzess=;
	b=BdI+SuqghvyS3FtaSfK//5LmqDQnxZaizSQOEp5RgBevqmh7hZ5sTDQXgRRglREV
	NGktZYrGYokt8OcLMsFxGgvlPLkBQ0VvOJ91pC5ghjG8Gqt44/v++ci6PvG4Mnra0o2
	I5OUsEiRj/wnJquKmG4a6BOlxK08NkVLAItWpFp0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660986652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vDa7khj5gGi0krmXPetE3xT3vcVZqN3TyNL/1HAzess=;
	b=U3FLIeCErBJQi9gqmf2CdPpEdpRRx2Q7BRZSxFFXNbI2q+De9ZXCwL4waiuTIKnJ
	0PkBCO2qgsRkQ26z0IfWNslQwRgzkod9dPIkq/RoLUK7sjtiwFr+F7RGjUWillOcNnr
	OqoxKNO+V0jMjxzvXqNPNuyrDu8Kdiy6Ki852WSY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ba84f79c-84636c43-8bfa-4d33-a8fe-fa892c352a2d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba0ddb154e0a54ffafa12c836a0e51bab98bc1b20a01ad44db7f89a1634d94ab
Date: Sat, 20 Aug 2022 09:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660986652
