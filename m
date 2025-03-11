Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431321E7C06
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 06:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741674534; cv=none; b=fVwLy6DvH8NhX4J3/S+GiIGnmC0d/LQhY/PYGUhMvC3PINdvtamW3HZ3lMZcHCaOr0LHAH1pSUtIVvTEgpvImZHu2mICtj9uxYEjENdnoLdoyxh7cTsqdMOah3Y/XZMpyaN8O+vamNGOhQB0rXsHo0HY/DfM85hgUJAI1QLnqjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741674534; c=relaxed/simple;
	bh=wVp2VDEuBQViVIiVOCp5q5wpJDJy+we/3wX3oIWuCDU=;
	h=To:Subject:From:Message-Id:Date; b=Ux2HhgOsupBYUc6MtPM59k19iJ8flK9IiPkdxM4pqhJWePLevoBeG/0jAiW6eEc7eLTdBpeCGIaCjYEfxD8eeXmxjKSvEn+9AJPf3wLmJb0A61fcpDsVUs3RcgAFtJa72uGoIbacE7l+pCADRcMa3ltSIDQAHXgd8NefjD+gkN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mgxwG0qM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mgxwG0qM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97A5C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 06:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741674533;
	bh=wVp2VDEuBQViVIiVOCp5q5wpJDJy+we/3wX3oIWuCDU=;
	h=To:Subject:From:Date:From;
	b=mgxwG0qMxjI4GwYMrO0pp4QNxoeHMxaMpgkyd8hlsPfZCoGxk3CfDQhrJj6xGZss1
	 Qc3g8uvk9cmgFrJMRcwSF8b9iM1XPwwgJSGNatEw60qaYNpvv1648CmCRJNJfJ9h39
	 lmxoOKTUvozpuNwy6yXAJHBKrLvqlYk2aRV6e2q+6kHiUwaWpKhlTJL8abrZ3TEHhH
	 8zBv5TgLD8HmP26dLguUQaEZb1dHdHHPawpBzuFgrqmj532vMFUigxbDta3ZpCpzTi
	 CWB0StUH++MK6kIP/1U7u53CIY+sudAdnnoCvx9LAU1hhTVtxZl158phfDjR7j0ZDO
	 KK/7D5Q+k3XRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94667C28B2E
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 06:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174167453358.26651.294455543440563245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58670c4c701c48efe6078f1e089aafc0cfbdf02de7070886b115e644274177db
Date: Tue, 11 Mar 2025 06:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741674533
