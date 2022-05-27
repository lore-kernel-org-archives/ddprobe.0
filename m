Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23AA723A3
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 21:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653686819;
	h=To:Subject:From:Message-Id:Date;
	bh=2HmR8JRPqNc2Kku7n1+gnIrYcKs/fNegS6GFzPVMTeo=;
	b=hYxYDo8bwWaUTCmIsaFZObaOZdyJotqFvaJTAi0HIaN7jbYwUPY9WUxYK8ji1id8
	HHBSE1WvyO23wxlDOjxAoxBKXXUBR5Mcxp/3oCY0vFBSeWlBrJGnoVx5w0HCZWjC/Af
	2O1NflqtKloAQmZOCB3SAaN98HW/yudEEPXuzPjk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653686819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2HmR8JRPqNc2Kku7n1+gnIrYcKs/fNegS6GFzPVMTeo=;
	b=KOAvHLqiIPiMnX2k4aoixlZvPmIWU4ILlJHDyQN8oNLGn1TbqsZpF9B9U07Sjejz
	+YtmQgzPRpUYCtZYyAAgYs8h2/BhcebmgMGm4sGxeTGLgfnvyu9AYno1hLz98UAHXDt
	pdofzN2eLfZbOnMh6oVxXPgamHKsiR4otQ99/dn8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181076a5a03-bb3ac547-47b6-412f-b92b-083b9c8e39d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc61dc62ecb18355c18379c8e7c06014e77d09aaf87ddced5732f8b3afc71725
Date: Fri, 27 May 2022 21:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653686819
