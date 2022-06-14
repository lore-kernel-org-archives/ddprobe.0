Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A03946B0
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 10:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655202299;
	h=To:Subject:From:Message-Id:Date;
	bh=9bcfUrfI/fvtLBrOIGeDclG1VRSZrfR3RbooVqh+zK8=;
	b=OLjXzGR/O51c/KSrfw3fGS4l98q9avokntVDGhGFP8vlnu4ES7QyO+2vE8vndOm6
	nL00S53DFJGkpfndzGnNCQOUWrzZibkFaah4yPonAYA4FNHVUX4323JyalAEcTQM6qk
	yZALEU5A7o6ogdGZhLWLO/hitVP4Vr8ief5Z9oEM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655202299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9bcfUrfI/fvtLBrOIGeDclG1VRSZrfR3RbooVqh+zK8=;
	b=ZSkYWG5xVZNg2O8sw8sG/iuBl84FkQXozm3jiqNaG74/+EwfvntvIv82F9WGL6oa
	hzUdNIj66nJEg18LBupmbhP4u0gTC86DBTGWQzgUJtUUhOxzvJhryrAraJom2dLgB56
	HTcGEQggSsmdEyPLqt4909aFUcX2Or6ud6q6FVaU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018161bebd79-069461df-160d-4c95-9551-f82879105c09-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba8db8bb1727785e35b724d893fb6dd8533678855a8f8b9b036b5a773721edb7
Date: Tue, 14 Jun 2022 10:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655202299
