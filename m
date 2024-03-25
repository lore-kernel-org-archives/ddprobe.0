Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D18C9DDBC
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711382296; cv=none; b=slyAebpC6TUPDpWElFRAOAeUbG8DG7Z/e8C/j03ek40q1GuLHGEdHikRscqJeznN/RKogZ2u3S71cHKpBttSAckmWF6GcyQ6Am0ODt9vxx52mBfaxTZlRAJi9tNgivk8uON0gVqq1ZT2j+3jmS4CLCnwvSXRWOYwogppbj8oy7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711382296; c=relaxed/simple;
	bh=DmrxEybMEZg7XNwqgyssIV7sb1NXWcYfVdYMtot3qCA=;
	h=To:Subject:From:Message-Id:Date; b=SH9EjFsMM+ULSajyMidr8bUZ6ezpXjZPYZ6kMNvy7T3K7kk7O3zgA0XZYWH7EX6h8FDDasAXge2PXrs/0Zy+2N/xa6bmKgxr9k4NmVxyN31I11p3Z1TM1GI9iKFKvd6okxVXqY6lfh0W4+7PBrKOYv3kRXzaiU7D7Q6JbOlRT7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OfOELD/L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OfOELD/L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D61FC433C7
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 15:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711382296;
	bh=DmrxEybMEZg7XNwqgyssIV7sb1NXWcYfVdYMtot3qCA=;
	h=To:Subject:From:Date:From;
	b=OfOELD/L9/XVLInF/Nu4SRtqYH8wZUcMNhKYca0GxkkLtkVvTsBvS981VKZiUKi2X
	 fSEaU498aWW+vRMo8ZTeJV4kSKgWLyGmw/YAKDKLCLwybUISe+xWDFxBs4Lpk6WKIG
	 /toXhW7jm/3Gb3zsmEjpToeKO/KeNfvFIqB6iUvxD7q7ylHpaQc4z7W0yqpwT2Whb0
	 v+h8u3tAhquMUmCaOXMfFJOdDNmq6wt5Tu244PsLD1zwpQM0ESPk01NIC5uyd9HucU
	 tBQ/cins4qy8a2/YFrhWINangc0o8AuGu8MRbrARF9OH3abu8PTNSCNXgIiqRqkPnE
	 rMnV7+9+7vqQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F7A5C54E64
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 15:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171138229638.18270.2941555466507582651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbe0666e4300d3bae94726e2346c0a1d957d838242db33548076a03c98b4c568
Date: Mon, 25 Mar 2024 15:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711382296
