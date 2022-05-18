Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1DBC7F
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 10:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652869199;
	h=To:Subject:From:Message-Id:Date;
	bh=jQnpMitG6EsYZ2gVh3GmT5oD/NnP/Qw7AQaphmOMucY=;
	b=B5WbRIec1fcg154r/TY720DU2+s0nJbUNKhLY6KEAv7EMY+qzdmG6eCD8RHVvFiu
	4uMIUkMcrJvCkLabtkyV7mNBLbxxKs0dTqnCazV0ELgFyuWmJXHyB4WMD1GKh8Y1PKt
	zl8DScM4UMcU5lvvotDNlFWqAD+Rc4gjSQR96WFY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652869199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jQnpMitG6EsYZ2gVh3GmT5oD/NnP/Qw7AQaphmOMucY=;
	b=IZdE74NdzqSW+MlHIiDZoOtXS4zc3dPumPuZmK+LVqn+DvNFxuwd3zoMkBgu4+X7
	Vad1Mxio5O4rJ5Eh8irY5ujMs/HUhEyIWUZ2/Bs3105wZtXBwy+9GMQjkB/RM8PBzB3
	tSPljjuZySzh31/b/qOmcrqJd8OMbKOc23ou31g8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d6ae75dc-781a5215-6c7f-4264-b189-f2808cd068c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 152d545dff92bf99c89cba4614d37b0755a902acf84b3d06cb3dbf5839212f43
Date: Wed, 18 May 2022 10:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652869199
