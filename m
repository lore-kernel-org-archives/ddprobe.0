Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D7332F3D
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660840852;
	h=To:Subject:From:Message-Id:Date;
	bh=ZPw/WzX+1kkCWpqh+zQfdgheK6lhRJJXIE0fAj6icWo=;
	b=BYjCfvVory/vQqtglMGDDV1uzh918FV0Pj+TO0KbScKHQkgkbOUP3vcTrMv7pYs1
	xRTuORVBRhXvUAwRaTOtsSmp3vX1BpZ/SMXzhu+53pmvGa+LSN+tVIxitF/Q1bITD0m
	wWrWtG1NM6vNbxzz77Yw27BGEABNc7Ewg659uFKo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660840852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZPw/WzX+1kkCWpqh+zQfdgheK6lhRJJXIE0fAj6icWo=;
	b=aPViIC0v3kZYC3WRc53doiUyanwOnxlH3h4ovUSk1VyN1xcydSjseqvZNLFFkhwd
	Th1IOr5eJtHnws98lsP5S0LbjYYsI5vqZQUVieHwVshLUFGBsB2AguR6Z1c0/i9V1fm
	2LayBfVxAoj4dVkCkB3qy6TuG6fFTVK2H/6wzQDI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b1d43c93-83485ee9-8fee-45fa-a7f9-7c737f302e80-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce504a93661828ea30a1f97f849d6b973e71a602ed26c2bc1613e9749028273f
Date: Thu, 18 Aug 2022 16:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660840852
