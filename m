Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1D8B4A05
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660933252;
	h=To:Subject:From:Message-Id:Date;
	bh=Z3P5BYa9me16vsXDRJ55ONNg7S54Cz/V0DzDQ9CCcJs=;
	b=UkM7KYkrGW7KPp64/uZasUek2sdT6B37X2hS6/6Feo3ttAguc4sdNR8bR3GMsdgY
	JLotxOT+Mw5PHVAyN0ekeDCm+jQp6lkltzmWe9Tj0VMApmIy71pQB4cNnzb/wxC/887
	J7RtWsMrSg4qfgNjnXF9vyUsyyflUC1LUKDb6InU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660933252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z3P5BYa9me16vsXDRJ55ONNg7S54Cz/V0DzDQ9CCcJs=;
	b=fhX1Jn3fVxItuFj+2iTCULdxv1/eYS276OiTi3EmPXkTeglcL5nBjmsYW/MTz7jK
	ZJIkpgE75a2i3BOPZRlqi/GYBn4G0V9qG5YQjC7yMZAXEnE6szQaRZtw879zL+MMNVF
	eo/nVP2lkFShTwgJYiAbOgXJSO/4pEqxNnmEIt1A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b75625a3-3ff486ce-b01e-4fd9-b96a-e4773c522929-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2fde1e91c0983d032ebf4ac5ae870bfe9c4bf06e6ddaba351f918e9a59a8f400
Date: Fri, 19 Aug 2022 18:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660933252
