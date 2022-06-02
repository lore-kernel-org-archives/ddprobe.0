Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60DDD7E
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 11:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654168799;
	h=To:Subject:From:Message-Id:Date;
	bh=BpPOkrXirqKezGsaXhvDJ6g0Pmt0qaYiTOVR0IykT/A=;
	b=VRUspJqjKLmn2EjaErBri/IVW9l7j4vw53mC8VnZ0QfhaD7M+3VsLOP9A4HR1/b6
	2qEU2b69LY/bnJLx7eGP37nULUx5QvPhBc9qgc4SxUQf5rYSRCBp1Vy+s2N3P9tlSpd
	O98b6DNNKZkA+jveQGomM4nrHBjjkvbcNQj+ZpSY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654168799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BpPOkrXirqKezGsaXhvDJ6g0Pmt0qaYiTOVR0IykT/A=;
	b=Y8V74eUTobvPaCadLv5ba8WZXo1xkNY002ZdpRtt5RdrwsnWE+6rt/EBwWlczmqB
	nK9GzfEbVoiNLr2yauaY7yOTR21L20/zcbnaUZrFeFv6xj+GZK/tEskCk7/v7lSL+uv
	+l5YDiLh497Llq5Yo3s/3hWsWf1Y1+5IZjRjjx+w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812424c822-9b1ff1bb-84fa-4fd6-b7bf-af625b3891a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd649f225833726eed15ea9b7a641126c65bad7c527ac3aba5ddef404cbdd0c7
Date: Thu, 2 Jun 2022 11:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654168799
