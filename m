Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15719279346
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755211794; cv=none; b=V/r/SEEQBmNVqu5h+CWYH7wyzJMaUL3iV2PXYdSauDOoAZry5qyPoaSu5h63sSEZ7AmnzFdSFq5G52rDxuE7tEpH0VEMT/y+gEbOaENIppK5UbNeBuq4VDsznsCf/cHb7gaAaoqOaxOioSAm67HYKdhQk0qJ4rzV5IT8F+C095w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755211794; c=relaxed/simple;
	bh=0zS+DcaT6SVMGu/y8saQO6X6mx5gVQ2UDCHoFUQy2Eo=;
	h=To:Subject:From:Message-Id:Date; b=SGVv+1HGgMhrdAhUxayVgw6Rt96KLyRlUPpUW5R+9ozQPZ7/8vyN8cOG0t4P4Ih70K3U3paZvR5hbIIEU2PXzU0vOUL2Dpi3M2ZqEekSTCRFA9GRoxlw7OiMGHLrrvjg2lK6P/wPfr8wrY+dKJ3lZmSh6ymg6g3JFMpLXMFZmaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NT0S8cjB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NT0S8cjB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D2EC4CEF6
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755211793;
	bh=0zS+DcaT6SVMGu/y8saQO6X6mx5gVQ2UDCHoFUQy2Eo=;
	h=To:Subject:From:Date:From;
	b=NT0S8cjBqvl/5rQnx9UVhVLfKBCsSazHjQkxZz24bLhNP2jcA6XSIpX44wzpwxf/h
	 jrpFu4QsxFYPWRFLhBFX6g8bUpXryC0WJ0KHH+UaOPAWXV4NtSGzGa4sQvqutbNrzG
	 vyOES6KA69LngacGjPwu1yrkNeFEPeMfCH0bshokbd+oOzwkn/WYS9FkFdeOuEE7Po
	 TSIFwk0pkbamVj5bJj9D9kPYj0BJ3KR+8HSdVfBxSy2LMFdX/QfHCmroBOsSy9Gv5b
	 3EwwXj4P44kd+z+pIDBdFh7IE1+A6Dtg+vdWivK+CCN/CiqzK6h5w+nCaZ8HYi+qZi
	 EOM1nlk976Kmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94992CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175521179357.24372.16128456187067286166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90461fe693aa9e8a21f51fd26031fd9435a14b84332649dbb010c834d1a69433
Date: Thu, 14 Aug 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755211793
