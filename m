Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC8EF34CFDE
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774551893; cv=none; b=LNWG6UxPFt7vNTOh1S3/sRiXjkJNNIyzH2xi+3B0nZaayvxQcmywcg2m/7Ok7hPgEVqrjbX2gVJSQEaiJLFqvqXsuVRf3+lMgsEf1CDsu9gJs8lcniwTk5SRgLrO8hJYm7JT9tHV/4UNMpsWFhOX+lOktk3kuqEyJEkz41n9pSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774551893; c=relaxed/simple;
	bh=A8tQ15kIajdHfCKPh9BLYq+4STYmlMgvWDjaXgZ6QtA=;
	h=To:Subject:From:Message-Id:Date; b=UBimVjSs9QQhwMAnnpDqZvAR6qOYBE2wGzTGgrRjFQo6zT5cWabHElMyS022PCDiwIIFY3Vxo92egFDNsY4QWJVR5BSlFMW1CsM4ngbHYyg0yR8Yzf8YlECWNbVRUZKHuZwnlcwyqD7J94vPa6IK8hv+C+ppio2N5Rl/hniY2JM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FfIXlGgd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FfIXlGgd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DDFC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774551893;
	bh=A8tQ15kIajdHfCKPh9BLYq+4STYmlMgvWDjaXgZ6QtA=;
	h=To:Subject:From:Date:From;
	b=FfIXlGgdCQIb2FOt8d48QdZHCCqwv3I7zS+tQFTA7mFtTXhBY3JIb0r+xBIYKNexq
	 XoiFsj/Namen5OV0N/Tl9qhWgO/0rV4PJphRa38EOhqUzbyEx5MvB8LG7BVFhgjzqV
	 Plhyh+yi9jHfBJdmjVCuEv2E4KpVah/Em+F86yF6/iszroWjtkqbbwkh8/0jNWZXpL
	 k3eWmVmvbA7sZ/5smx8+75deqS1wiidkMlcW0pnUQnFft8/2VJtOcmsMLwIgTUKv4M
	 lC2nM/p1y1dJKiVq7G/6UkSs2RWPqBGfVjaDUInoffHmYdnILSuKfcvRhnkz6GAfql
	 d/gQ1BiUpGX4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939A510AB808
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177455189359.30837.356937497054992648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d3a0881b488342d6afbd97be08ecbc95197425b822d4bed5387ae1cd223ab28
Date: Thu, 26 Mar 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774551893
