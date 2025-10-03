Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264CF2DAFA9
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759513194; cv=none; b=MOG6TsbARzr7nO7YTFpH1d67PTVtqqT6Rk4RLsVyxgVz0cc6taqd5g9Xdwxbu+mF0t9xJBkm2nCLWi3ttGCNQf/zcsEpFGfxhxORhB5u2HjmdxVfn8IU5d4j6TGEMnAN9MdlVnZtIaLMsRKb2jOYSQ3+7k3FYZgs1tbDewjgFDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759513194; c=relaxed/simple;
	bh=CWOjzmiRd+nzi0Q3ZQvpyl7+wBeM+aAr5ry8RfVI4Qc=;
	h=To:Subject:From:Message-Id:Date; b=Th7KZT36CHdn2VpUb8lv5JFCWGRaB68xj215L32ls97W/M25x+jaIRs7xGeKITWELT8ik2BiVqeb4oYYqsTaiCXEdHVsvUK/A77bYDIWKiGh4AevNd7p9iTo2aRJ25L5b4GJ34lT8WP1WzDV5ywzOyCG/utbSCs3QChcP5ARn2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WiDBt+m3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WiDBt+m3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C98C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759513193;
	bh=CWOjzmiRd+nzi0Q3ZQvpyl7+wBeM+aAr5ry8RfVI4Qc=;
	h=To:Subject:From:Date:From;
	b=WiDBt+m3b2reGSu9iTMEN4EVmSvf2y7aP+1yF15zjAMVtbDl0ezeaq4VF5xyK/+Mh
	 p1vOOmX4/K35+XmlibfVugIw6oMbXKE/Cv+uKQcxY28uMQ+cYXY3cx+XsBMycypWSA
	 dLgbARU6Ya9I5xUnKjbL/irBsCDRXwieOl7TbanxTDi5LyLAyvpwuwIf9+BF1G01zQ
	 ecEWjEP/eacyttGZR2tdxDFGktVmqoaAJGJVXPYg2BhYb4c/1O0Z7ev3NHfABLEbU6
	 EIDUUOb6Uy47Q+ATTxWjwtRhP0/K4Z/rsgymHg4KtkC+sW2XwvqIgEiC0Mb97nk1ui
	 /NyxXjyilAh7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FEECAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175951319358.23564.1345794633878627568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e40657bbf85369551800fdb4e30cee2dd1625de689a36979c729ea65581917ab
Date: Fri, 03 Oct 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759513193
