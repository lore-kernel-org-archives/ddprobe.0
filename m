Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD64319614
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767926634; cv=none; b=A0SzphUx4T7xeWAJGHknUW2RMT+7S6jhlHR9dJjSCMNteXv/CqqjPbE4Zo0cyoF5BMPQJ59xACbBFp3ZdA8wNF9Frf/M9Y4RgJSVTmkSdCr5UNi3CPJ6FmGIAlfdAfiwAxSvtuMzD7giQVz3aVArxHAf7aRvJAS6fTZaGL8GS1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767926634; c=relaxed/simple;
	bh=/bGjBLS4AEB6sjnh6A3VC9QemNXG6CDVnbQ7FlGBIsg=;
	h=To:Subject:From:Message-Id:Date; b=T2zgPe1CSEsHQyH+cXzGw6jMVdR3swpMFYcMfyvYIYnQQkMz+1Z9qp8S1RnFWpiXKGwfaR5/Hpso+ZEJ6pdt4OhvESpDAtCACBfNdkytcxYgDy/4QwpkxXP8/VRuWL7zlIHTqaGRUexs+Jx5JJ3kt+TfzDDqeiVq4Di6OwQAA0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PRQm0osf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PRQm0osf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3ED6C116C6
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767926633;
	bh=/bGjBLS4AEB6sjnh6A3VC9QemNXG6CDVnbQ7FlGBIsg=;
	h=To:Subject:From:Date:From;
	b=PRQm0osfBnC0AZ54M53evsdJOyC0nQh45cnfL9b5fjGiYPlWzd5EhR/YiTPjIxSG6
	 W7OQlT7OfZM41Y0Yn8ic5yTU5AdPojv6QkijRXlqa+aG0kGk/s+OUWehq0t0whhHB1
	 5yaf0hgVb+SEoYODnaZmRLpfCK2PbWYD5uPsgtOrGQuXPhftRyJ2UYKWAuOoPYwsBz
	 k54eVZr9MT8EmdkHrCSvoPkb/zRDKFQ0DIi+EIm8zfx5X/qFeHOU36K2488vzH2Phe
	 KPV1E+YG/ysjX63AEMmg45IpQyDXdNLgg7MdzEsQfZmiXJRZK7TFxNJkugmsuuD9tv
	 vLWh24bZaKdPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BDCD232CC
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176792663359.3105.10400012424850955935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4e7acbfea002ce4e9d4ff31e1857e8b77333d4768d44dbb4dd669c10698cb9e
Date: Fri, 09 Jan 2026 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767926633
