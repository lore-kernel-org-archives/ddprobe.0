Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BDCD3624A6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770372834; cv=none; b=h5ixp0Z3xQJgISRvzdsL2nPhofVtTGsvF+pMjYUwHCAVbjapRaw4cY7I5XjbG2r3l7WqWdW0V6tANkExC5XAz3MUoYh7z/7JEMJU9no0K2jyMtFfEmoV8ybeqSnm85ArZNcBR0TqqzUzp3A00OEQVwqA7Y5uvOdN2B/4WjX/beg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770372834; c=relaxed/simple;
	bh=UGqde0aFX+4u1ZUcxj99VgXKNHNAhbMhwA4lM5lacrk=;
	h=To:Subject:From:Message-Id:Date; b=Ek3tSkKMWoqGwcIYWNmRHfPw3mh61ion47FzDyOeYss8W4vP5vQpQtibiKZT/IPTqlmKpQcAqcC7UPNYsVjC8pvYaOyTxOCwzOYM5iMo9gntL4PIicqx4yT4OvV83pCfLxcidpSsTel+KvLUb1ZkNxPTKUQ3rsq9cYB5Bf2CKXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JaSpB1da; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JaSpB1da"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B41C19421
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770372833;
	bh=UGqde0aFX+4u1ZUcxj99VgXKNHNAhbMhwA4lM5lacrk=;
	h=To:Subject:From:Date:From;
	b=JaSpB1da0a86NXaqUSltqw7iX1sUdk0674svaVetpI9d29FAo56b/Px74UDArH0WK
	 g8nLufMb+Gesd8H0+FsZ6nVeOPSuFJ0Wl/jhB8tMRlMIezjFgT96e2KiaHgUuvr0tu
	 iX/WSbgwU+USr7UbVXVs0xkAzh+xl1N2AJeoF8HCSF5fkrVPEFILuJ4V6gaehtJzdT
	 IxBuoQOQcX8KVEIkPk/zYTuU7oMRd+a5OiJOm83iCXXF5zJrNzfmtfrZchy3P2MIm2
	 nRMm18QzX/lQO9ghqChbmANi7MTRanhvohRy8uTXwcmmfipl6nghgCYsHTRQ+pJzHY
	 D634E7ipB9W4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9575CEE2080
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177037283360.15192.9662236451658740219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3e8a68133e71e2a2cce2fb9e927afd80ec1c21e38cef1d33c5478c687298bf5
Date: Fri, 06 Feb 2026 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770372833
