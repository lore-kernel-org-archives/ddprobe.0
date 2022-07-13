Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 195E84A25
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 21:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657748812;
	h=To:Subject:From:Message-Id:Date;
	bh=fdOAhKPAgvUyA7AkEqVCkl6kHZgz71F/sxQd3a9oRhY=;
	b=FpqfO44JjFJmXRF1mf9OCO1iOJdxVaLY1M1n+RgIK29WXiqwH5ukpYyQK/MNNQr9
	IAK1/M/xPxcM62rBSpFhshaHckq6Worg4sfaUXaJwThf0pplGPvz1IE+nLSmbfbmlmb
	uIFOA4EDopJgwedbNkZkmuZy5B7P2qMzjeYMGekE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657748812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fdOAhKPAgvUyA7AkEqVCkl6kHZgz71F/sxQd3a9oRhY=;
	b=TigRYjB81b08/lL/84cYDoqDZgrFWHNpZa6+fwR5TeUex3mirwGqbdN/bODdkFFG
	MhmvWlef/LAYeMfsWYLk/8CD+Kxb4rOtDcZNQauoJUcRY8PcpIXeQfRfOxX1889lgJ/
	hPTKDoHRc3V+RSZEcbMzFcitZan1uSGnigGZ+m0g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f9877231-4b905593-b43e-49af-a3af-721c69a0d792-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ca38e25f9aed3e3c65ee8b204dbaeca516a48afae37f457a96b83b83a8e1105
Date: Wed, 13 Jul 2022 21:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657748812
