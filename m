Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240CF2745C
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762412394; cv=none; b=pu4ejlR/m3yd6dhIuCejMQQU+zS4j4qo4eLCeDcVagzepXk1aHByDTKaR3MCItgwm1iwqXfGQTIPtx/h0LtVUW/tN/+f0J/8Vw/AW3v9khtTPZI396YN8NV3azxS5KxS/13E5j9QtaBFs37WwjboNsyHcHt3OLmuoGWn7TebNIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762412394; c=relaxed/simple;
	bh=hhU2CVThYrYn/+mbZ0oNY1tBQEv2bYktHgkXG1N/lZA=;
	h=To:Subject:From:Message-Id:Date; b=fVRBZWSyFAnuJraK4nWXWkkjI+OnHy2DDpqDq6DaHUsclVLU9wrJyCapZeKRntuyk0SpZTXR+kMuhn+bnNBn1lh2dJRlL8cqVUrJi8hd3uK+MlmSj/+LsO2ilbPkOoQGlgBMe21SdueSHEPNRravjyvFg4hA7dgFt/67JpWZMHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXwk3jGT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXwk3jGT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0754C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762412393;
	bh=hhU2CVThYrYn/+mbZ0oNY1tBQEv2bYktHgkXG1N/lZA=;
	h=To:Subject:From:Date:From;
	b=SXwk3jGTR9XQF4dLni9KUWuYE1ZT9HqkwJ6qkXZ9vGER0RDtHkiyWRVzvOry0/vte
	 XTO9CYiX5ysr+DpdljU/tuYLhYUypYEXrgbN9HjCxg+cdWafyNqUoPqw2aZmQMAfGN
	 3PER3m9fLMEHqwHaNheUibDEu46rDIGYK5S5d0epGN/MzRRfhSn9qBSl0Yl2109nbh
	 6i6yhEP7Ur4NgiQk8H/bwntbhZE4OljKfBJUQe9QQZfMEoGf/7ax/8GtXsnpgECt8e
	 7riehjTKiX7KoWyS16oBmlPbK1JqYm0CE6oXXu9PZUEX64fvz0ZNYtpipJ6DOOUHeN
	 1CmEJvx/7mB5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92050CCF9F8
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176241239359.5587.3038190769394850131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f52c5ff5e84ef7085d1ffe2e36a7dd0878ec066e650175a036cb246c9c7e0b0
Date: Thu, 06 Nov 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762412393
