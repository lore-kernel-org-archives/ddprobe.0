Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196F22AEE4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759328394; cv=none; b=oCHROxZszRcIbNob2mOh3MX4FzlfjPBxtjXdUzR+s5uKybd8BQH+NAVHQ/7dTLZbbV0Sum3ZYDG/jWkA8qGYRoGYGXV4totloU6TdStgsimOEf1QrJeKORcCv9ytNGkk7iSxbWbo+PwPybxR7eE/YCyL38zFtI4lc3m8lC/9bc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759328394; c=relaxed/simple;
	bh=qo4swP8N74K8ydLh6EW5rkGbVuouTJz0a4pm6/Em2SU=;
	h=To:Subject:From:Message-Id:Date; b=QiwT6On/xDia8zfFU0QnYlyGL1jwRh3VhbcPQKimdXJFjvvnUMOEasWtMtiNNTNZwEfjlkGIqHGPS8Hh4qXwwtGh9XRYMgBnPaY75TUA3etqK7U8Q7cuUt52ZtpmjxK0Xb2x+me+ozWLj6sR+EhfR98R+1vKIeeFIzH54IOqKDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NTiOiDzS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NTiOiDzS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C4CC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759328393;
	bh=qo4swP8N74K8ydLh6EW5rkGbVuouTJz0a4pm6/Em2SU=;
	h=To:Subject:From:Date:From;
	b=NTiOiDzS5SPrEf/hvO1O1f0bawJ0jZNm1H9Bozjf9F9RH+DE0NyUE0spLe31Feil+
	 UsD70AZkr3XglrJg08GwwnJ0cd6iij2LVCuaWb1IJ9xf6wF0fBh++Pszo9GZNHPlUH
	 +VOVbfmZzBJHazahR/K+qRfYMF7tls8sHuqG7g2Xgjcv1U9+BnIgT8MG+X/uayzRIv
	 CuYe2fwjg8OZKnMkGWZaXEOpCoNMQSkXM/ZDjS1BWC7f0Cus9UGixnJWdXeuwjwhUO
	 HeDaNMk+M6ZOB4qlx2Qy/UgdhWaornK6yvOdYgPdu59sSlS6SaF7d9sKp71LDHnIQh
	 5P9Q3Q7MA3URA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957EDCCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175932839359.16889.3964360168543845105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2e080a74f94ab69da040de868faf6081fde6c29f045757a51c86a4613819d10
Date: Wed, 01 Oct 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759328393
