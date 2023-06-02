Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67CC51E53C
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 19:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0229C433D2
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 19:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685735885;
	bh=yanyFmKoqli/eM/1WKsILwFdu2hoNPQhkVOP6bWf66g=;
	h=To:Subject:From:Date:From;
	b=gstWcDKONcsDJ+QJtyPJpRlSbuszHgG9f6I5oWDql/izz9VNT/HkQYS71FmQLkuE4
	 qA0JiCkhUv+fkVJjOv4qhm77KxqAZ+35j2SnYJ7f630AcuaFBk5Vu3WXp/1VOhV685
	 Y8h2sYguFnhRQwiOkonulxmmoUTtcrxmVUSYAd2DPpQkZ4se2dj96tHRfCCupTxI4h
	 vuTwGRq1Zr/N8JG9lU2TmIj184/xWB+HpkU+BWBG5FHSHJ2VJmelG1zAu/SYUaU3Am
	 1/kQCc+7dOY3I6qvdPA2O61Bfh0iYgJt/FN3yDbv4mtXtwH6FUjQ8AjnOYonPQ+w8W
	 ZRJGdI8pYk6qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2FACC7EE2C
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 19:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168573588572.27626.12029808493122397475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed1fe32256fcab2c431bef88ef03848240f3687799199d77d21d686d9258b888
Date: Fri, 02 Jun 2023 19:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685735885
