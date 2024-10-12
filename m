Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F77817BA5
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728720954; cv=none; b=jXjc18zJ4fdCa4QeV+gf4HE5hWvynCBZbzj3HpcQnxlyVad8uEyUrYZleX2ACFZeHfnNiLtmqiMlnxrXqacZ5+lWNYmZto0yhBuZQXsCWaSyNLafVJvVv/jTG1k50opqGmK1c4JZD+0cBuFCzCpXrrp4zd2tpCTNwU720ZXLh/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728720954; c=relaxed/simple;
	bh=OfoN291gonRm/+aZzpqklQ/XISPL+EuynlgLCsXuQLU=;
	h=To:Subject:From:Message-Id:Date; b=EVCOBQQruj5jtvVmr2Ozg3V5lL9iP3WFYd6QQQIhAvR/7DIuR3T3g37tXxnxSaMK0zmMiXrCVIVy4hg2lWcSnvsR0IxjGvy7GL4W1EG2xomRTXYaAAtEdUA5S0C0nZffBCAzs64TtR1lCSaCg7+9ic0DaSDHoMYY4yFIRuBc7AQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RvSRLcDM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RvSRLcDM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD953C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728720953;
	bh=OfoN291gonRm/+aZzpqklQ/XISPL+EuynlgLCsXuQLU=;
	h=To:Subject:From:Date:From;
	b=RvSRLcDMEDvWJ8rLYZlQHqOd86PwPOIwlTLDFm0S0zsLu1oizx+8qWZrdk94Pgk3b
	 gfwh6b/F3t/WpjOhrDs6zfkRUuGbGU6GKsICSb6JOgl4xgASq2ZnnU1IjnEGz+ldts
	 8uG+LFlmESAZNm2Qg5XX2Gfh71soVsRxAvFHJ18dTRjIbImTujEbUY+1HkbYrmmv7i
	 XEHr/z174v6eUmXMa5LEFLLMFkWj57abhRE+FH5GkErmR7HL3iHyHgqNERNfTcXd5Z
	 8WZIqoa4i4iy77VnqCqXM6iTg7CBoQ9Gd3O3ueW5mrp3NVqD4D4gYZJ3v+mb0kC76i
	 juFtsEuKsXb3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 989DDD1A451
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172872095361.7219.4976030055055591914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d480fd66583e5797cc989c146b9c0b99946c71d9df45f9d8b2b9fbfe9adc978
Date: Sat, 12 Oct 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728720953
