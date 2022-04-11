Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F126F1849
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 12:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649680978;
	h=To:Subject:From:Message-Id:Date;
	bh=rN1L3nz0iHBRqdctBc3QmsWrrg6qN7gGglkVZBncSCs=;
	b=AjTB0uo00GPDry5P9QtxfMjQKbRv349ggkj1mdt2+3jfrxSHPfFaFHVn6D8w+2Nx
	LkDFiJJ64PGcGHyKMF1BSkVPFLuNSFX/2M2zFi7NTzTIQ2ro8vA4ChYlOVNmmOs3xqV
	rz/mbPJCT6fLS4Zs9kJbgAvYj3KnCEPwXtK9cooQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649680978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rN1L3nz0iHBRqdctBc3QmsWrrg6qN7gGglkVZBncSCs=;
	b=A+oAp7nWU5t1dm7g375OR+y1ZgwWytPxYE2Fqo1X1cA6U9eB9RR4TRpbxkT2L/r3
	JiRbAZHGEBDR7wjAzkgt3Qjk6Kcvbw4CmKGqaquGysPFsI4m2xCCzQdxE5T+mjuab5r
	CjjDaZ5Gq8XvR7tISZ/35CiLMGSSjV5s/JeZqN6s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018018a61142-2f678e98-597e-495f-94fb-86895ad6a2b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 826a4a214db3c34efa13abbbc7f096870ac4a9db29b2637ec434ffbf27d4b42e
Date: Mon, 11 Apr 2022 12:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649680978
