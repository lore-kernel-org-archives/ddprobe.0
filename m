Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03F69A2A
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710707897; cv=none; b=X0jQZiXm9yZ0/BsOIr52FEVY4AOPRHb4/0yelLZuJHDbVqfMRv0Kyy8PMiXV3cVWJ8I8bocjnuYViX+l7aK7rJzDI3JkA5dcFc1QMLKV8oikG9fQiwYYRr8gRjoC0rzvD4g2Oo1oxWLchZXqrlDZZhYkBKCbeIhazQacrH2z3IA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710707897; c=relaxed/simple;
	bh=CAFcRHf9Z+j/aF36BUqLqJWUKlWCJyQjGZHlCZSecxI=;
	h=To:Subject:From:Message-Id:Date; b=mEwySe5oaf2KuCMMfwfSAO8qp904hnSWbhLYefJ2kgo8OnI8kgnWbg8E0p9If/osxnhls/+XcMejuYKP0UuSEWHDGV3s4uSuoXOijW22lpjMOFQeB3BLxeT/uy30A0LTmYXLrCJYvMZW+w2eCReFvgC2VDVcSDJZsJ8j/F6AdN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MQfgj/67; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MQfgj/67"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 707DDC433F1
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710707896;
	bh=CAFcRHf9Z+j/aF36BUqLqJWUKlWCJyQjGZHlCZSecxI=;
	h=To:Subject:From:Date:From;
	b=MQfgj/67rTUKP//wZHrOP5IAL5mJ0kcaJ/JVCnAdbHW5Sd1v8NtxYIfVnMjsboHgD
	 RNKvdU31JFziV1cRWy5oEcldXywb1H73COimNaPwgE7eF4qT07RqJxK8dEoS35/W/v
	 uIwTeCGj5mGzWPcuqdVWHZbMyRDNmX3AijCthEzp3AounVdDoVzBnXJFGVcUTIxa0a
	 /k8Vdn4DC7eG77aKIdeyE72JoLx9CZr7XbvPZ1phwec1D8y0LHtGHHdSFIY4TRyj8i
	 cgiqjTtEgK1WFZulIBPy5XwLbBFkRkE1V3KahAgI9Jbdzp1HZH8ysirtEASu5KX0G9
	 7s4vbyNEgVNRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E6D5C54E68
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171070789637.29913.8727031159500910313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d840b992c3ef36372ff80d49158517913075d6fd1448cccd0598222c67e8fef
Date: Sun, 17 Mar 2024 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710707896
