Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EFEB22D781
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 22:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782081994; cv=none; b=bxMIohPTB1tXkjOHUJk1tsPkU5/FYxEKCxYfcKaFqOGRAoE1iQucFkVsn5LPw2efTLaJCT2rj5/DIJVtRJ8QzYcQ9RV2mI9mqnQ+aYNSa3GrCaboR7ObyX0oEDxenULspQ/31I+hbFqKYdTk7oyFx2n1gpUZxqBbWcOuuu0/BoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782081994; c=relaxed/simple;
	bh=O1cN9Z3lgMM5y9phSUZ5oKZMkt1yDlTBsnz1JFIc1gY=;
	h=To:Subject:From:Message-Id:Date; b=HAjwT+h3Q9qgN/4NeFrfSGYjI2Na84vbQqZUc1PSOpQTn4o0w4d3F0CDQySG0HQfXMcs2UWDZiHpYonfhuL+cacg3t8nTgw0offdjP4sU3WWgeA/WLSF0PQwoOXrKXVYIbCylwwxPVxGvY+UKFi5JcXLIxDmzKcYydZLBse8+xA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SNqrA1dA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SNqrA1dA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA420C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 22:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782081993;
	bh=O1cN9Z3lgMM5y9phSUZ5oKZMkt1yDlTBsnz1JFIc1gY=;
	h=To:Subject:From:Date:From;
	b=SNqrA1dAuajS03Mqh3JxWECXiODvu+oK5eQVdoycHEusCJOcOzBk5BSdtviQhBMBR
	 0liM0Ejavv5iNxZ3uhOv+dRmLXTFyN50fxlyRlnLXYyAm3U5Va/zlfwVLGU3LRzG+j
	 B2VEoi3ux2h8slSY07zH/WFPG5MoFFkPfbw/uVL3/GD5nqR5A3NXEdjrbqdq4MJNpi
	 IUwqH0pDD8mYIHz+bkegSAJQ9FCVrSpmZiVncsaIf7HhMzuFrxLkwixlvJEKrxIkbc
	 bENK7MsghMXioPMH78FzPAbb4gvjfbCtVoA5n5GX6II+AWJCQ+xwiEYg8IEyjZdjAF
	 dGNzBbL/lMxTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBA0CD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 22:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178208199368.26115.11549686053903680093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95bc9d1df16e6cc94d30b364511d7f18cdd62159dacbbbe60c8929aa86ca968d
Date: Sun, 21 Jun 2026 22:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782081993
