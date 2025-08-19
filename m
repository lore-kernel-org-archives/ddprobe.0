Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7D4279DD6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755614394; cv=none; b=uynYLXiO/rJtG3306dUbKCuniQR6BazTDB8kyCAkXVxrK6CDiocvosH0qVNx7NL0ZcgFmqpX8k8AcHUpAr7iqRqhs0pjbe6RBZBSu8ydaoSxlt2U2wrhi8x2isDm+XC/5FpM52iYEBQW7Iil5lVm+nBnyH74swY9oU/rGrr5kd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755614394; c=relaxed/simple;
	bh=Mzc0P19mIKYahdHEkGBNovOvFbHgZ8f1ZlZYcPT2MKs=;
	h=To:Subject:From:Message-Id:Date; b=hsEv3EJat1jx+4e6Ew8iv6vpL9F3SUmDCadgAkV3b2YfP5E6+b4sMlCUVTfabCEZsMl4oNpUghhVx/uCxlymI9uL46pUf+lz7Nye092jANfPh/yk/7Le1/sWJINRU1nfLhaRqDyVwcCu3yAE9Qjz9fx1GjvgXBNYaATRGVNzk3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p0VhaQq1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p0VhaQq1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CFEAC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755614393;
	bh=Mzc0P19mIKYahdHEkGBNovOvFbHgZ8f1ZlZYcPT2MKs=;
	h=To:Subject:From:Date:From;
	b=p0VhaQq1ovna6eCvlQVo+tTvulYvr2Krc03klU11Dd+GkdUa1PM4DcFJktZcQuxhI
	 dwy3fmwpulAn1Rl1qJJjazu71KDS2muOwHvb8wheU0b/mGiKdD0sldoRlVn3B2x+lh
	 3k7JOAK0YgJnQuTWO6jjpBYsflEzCNvxpdbW1flhnDxuwzuuiR9vzXTOTSq1lS4d/2
	 WKknmmkBREliVvlGb9ZyAJXmoeOkebeVJiHZmw5QcLBbLrt8tm+jruLkpfBnodp8jI
	 Ow0CvjjjBpJnJpwUb53a26FIMuf6rfYeph9RUkqltGrDvJ1sbJpcOjN87i1gpWlzrE
	 ID4EIisxxli3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAC1CA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175561439357.5896.4878738725841657057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a71dc07497685d262d274194f02db04715001ba37fab3491ac4bb62a51c6d00c
Date: Tue, 19 Aug 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755614393
