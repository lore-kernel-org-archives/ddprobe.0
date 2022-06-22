Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26AC410FF
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 05:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655876819;
	h=To:Subject:From:Message-Id:Date;
	bh=/kXcLT/m6DbB/Rt6yQp5i54dQVz4g45vdvlhoTCCsR0=;
	b=jRVmy6rF830iZXCIPiNnh4BCfbfqzOLTaDesL4rTpquRzW7CwyDybIHIqyjr1yCw
	TXENRGAeGN2L+4Wh9OALcsQLFegGffyGt81Wq/IKZSHn7OBOQ5jO8VT5epEfio2+z0/
	Cb+i55uK7lTedxPPmaHSH6dLCBEJYlhlUQiVSdJY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655876819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/kXcLT/m6DbB/Rt6yQp5i54dQVz4g45vdvlhoTCCsR0=;
	b=cqxWgwWpb4jOXZR1xzSgAV6aP1fSvIRieCcAmiRVW8J2GHuNpNz6aR7VIWGJks/6
	F30oC3BKMAiPqXMQErkLtTCIzyCBzODvftzrkq4BaW1A1Bo0ThNWsNn3aVCgX0ogCgs
	T85JO5tDJYCNIv8HiGqoZzcAyJNm+0VflTBoYhOQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018189f3194f-a662e88e-d077-41ee-94fc-dc641e552fbe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62f4a80a72905fbe6ae57533190197fe7f7e81727f0d75cfa3e2d0de2e309ba2
Date: Wed, 22 Jun 2022 05:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655876819
