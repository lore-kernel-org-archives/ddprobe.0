Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8D817A2EA
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766325834; cv=none; b=XycpvKjOYS8QEcdoAAkLWkRxLdEb/N2YgMBycE0I37VOzMb4kHk0cYevakXUEjx9Hb1mjzAS4R8w5r7pAdGzEbPAjobSCeZYuzCwVwlrUnCv75VOgUoWQRnU50S+NfIzjA4K0PEkZCvllScZUZ/uVmwHIdEQTrCOmoZ3UtLEHyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766325834; c=relaxed/simple;
	bh=0dyVq9UF728A/Q3Pd5ZDRV4PT8dwQtnG5VWAxx7w+ZY=;
	h=To:Subject:From:Message-Id:Date; b=ALwGN+Qkujea6Ivc7DYRSIMNgq+X5r8MsqkhgASYS9hd+f8cNAEzdiJcaTpWNeHcR6gSydHfpEqLDdRe2wEAnhaSqDIHiXnmxTvd4SsnERX5BXKHE7Ub6iDlr6jc1Qp2ENZgTwe3oXOGZBxT5GtrjoSV01JJvzMLxQQhpO5+FBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PzGQqTd2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PzGQqTd2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E81C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766325833;
	bh=0dyVq9UF728A/Q3Pd5ZDRV4PT8dwQtnG5VWAxx7w+ZY=;
	h=To:Subject:From:Date:From;
	b=PzGQqTd2rkkU9VnGMdhiRK/XOVeOqg1gQ0LOa4RrDAvxISHss3drTRJf6jcnDRaLQ
	 Hrg3kaggofDzIZ390lksf6FV9gocevoke5ok7Nal6xYVd8mzJK+1X1rq91a0oXDHot
	 1qzF1CFo5VX6YbYlJ58GgH/yMVm6BNFNdRh2PkSCJwxjve/zqQ2Qh1+oREoRxakbN7
	 3YSg/HPjchEhTzNS8FZHswNrII/orn0t8DnTHPJkbgmFWhQs484vSZTPOhvJV86I+f
	 UFp+qBpATLGKKn61w5y/C4qwZRwEAvz/OQHXKo8nFepTp215jB56B9/yaCR/eWUjK8
	 XgNCoyAvCeyTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B50E66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176632583358.21654.13445237335807644368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ce6c6544971bfd4ddf5460892cd2b9200831ac464756ac1dad816a1b52d974e
Date: Sun, 21 Dec 2025 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766325833
