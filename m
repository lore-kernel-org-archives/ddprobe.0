Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FFAD188000
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753634994; cv=none; b=Gmk8myjsyTQHIc6VuyzqAJIiCGqyP7YAGKHlDDgzLgW94oCbO60+9V08oD+vryF3+FXiPODCgKRBilXIhYdfW87SKRZHWPrNvaewCB8s1yALZROmIjKQRtQnilHcQS1ITTQo1POyxMMESL/U4oPqRX7fGzgKAakBUbFMocuIQ/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753634994; c=relaxed/simple;
	bh=IJ4Jn5d3u8/x+JbZlEIVL9UnglFtkpCDJGlcDqP6bB8=;
	h=To:Subject:From:Message-Id:Date; b=U/3iWrCwU+ceuIEqWQPpAl+2Jqo/CwZwOUc8rYmePc3uW/B74mGURmpFK6Mh68/uu9ayvf19GUGkpEf6BeaHrqsaMwFxFMZqM3l/Es0GwJ+Sa9I9gHL3UIj2ahVO6Wlm7f0LcUZ0SZLvdYaiMwyc6mwHHVu6HgqFY3yyoPJ7qVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vOZ24RNh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vOZ24RNh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DA5C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753634993;
	bh=IJ4Jn5d3u8/x+JbZlEIVL9UnglFtkpCDJGlcDqP6bB8=;
	h=To:Subject:From:Date:From;
	b=vOZ24RNh2sHY2ZhrpA7cYanda8Ro/OcB+i6dglZdxlj1bmlY2oaCnqIv1IcvWafPw
	 bIvr+7y+oBrJ24lmKWbpYh6/IC25u7BPiTdLC9iNUPD14XYyXVoenVt4xbELxCJk+C
	 8zQV2vxyHVqcxkcqx937KbYnhzh+6zLjOu8juBER5gIvzBiaxZs40Ee45YCoILjXnv
	 zViE19bnctrjlPyn99K31UVCSfvG9b879crHeGJX6rXRfhTViIgxUf3JaZ+o+niwPt
	 07BIkvceLxpErjHco90jJ8pZBXvlXYLGS3oHapE5EtZ5OW+JECCzx4rhqVKGV8etIH
	 0QCzwvUKCjfGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F26DC87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175363499357.26164.9385522231064476133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 339b61df7c49b947c1dfb8dc90263ce7a4aaea31087a9019501eb7faccc538ad
Date: Sun, 27 Jul 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753634993
