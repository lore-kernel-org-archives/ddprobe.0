Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E92129A2
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773300894; cv=none; b=cvOzv9+cBy6p+e38g06fgPLJ6NFuADFU49M5OYDcVVaRQeHlhl9glBHRxtvfPxNf3Z5cVk33pNMxzzP5bCRuH0MJGUo+VtlvReYkpTh8o17mz85S6aHL/4AuYUvGFTZ2tDz9viZpBQQHMsDdiuzvKFpXrP1I6aHK0ClO8VwFR14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773300894; c=relaxed/simple;
	bh=BUeuHyX9VEFmhELoqiRMlv7RrSevUC3S2Dla/+O/xUw=;
	h=To:Subject:From:Message-Id:Date; b=el/gj2500ToeIaEhKBBvUBBFMIkSFvlwAfCig3glTNa5aJdbXX9qskFcYnjHoxkbhMXhwdnXhHZQGLRdeJetz5zlCp5nFb5wJLXDxN5AZsinzOkpEjqU+6MqJB9Wheq8o2q3GJvouoNcbV4OiOOHXFJv57/swyuW7pjbEJpuHZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RkGFvzYM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RkGFvzYM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCC1C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773300893;
	bh=BUeuHyX9VEFmhELoqiRMlv7RrSevUC3S2Dla/+O/xUw=;
	h=To:Subject:From:Date:From;
	b=RkGFvzYMhkZDbwsN7S592yX8xaMMYHZEpRZPBmy1p3dA5HSSS+aICaI2pX5kKOMuJ
	 nuVECjjgqUHJetHb4iPsLKzd9NuOd+b5w4NI7LjnLBrJ1d/Ool9e1CDsQPKoBxroZw
	 +H8MpZTcLXjn9vgDyn5MqPEcXZGnH73akJHV7J2wGFnMg8BL+D0mFL7qIYtqdMJ8YO
	 h3TmZLIThv3lbinyHS6WHg45FbDo8jB+Za9yEhr4WSYIjiX/X9IWMJfVxkUogTmz9R
	 VHvhXSt5ojbeGbHW8EeIr6o/va1+c68APegs5Wu67yCGjM0/O1Pn+28xgwv995BWfb
	 rMWIBHSJ3Aa0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F786FED2E0
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177330089358.17932.10190217987652328277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67ea8f1942c9edb6cbf04165f50571ff179ead7fe4544dd812130f7c516666a5
Date: Thu, 12 Mar 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773300893
