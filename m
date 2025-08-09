Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358C718A6AB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754779794; cv=none; b=OxlzN1qGzw+eAAEtSUGWczM3Z97wcqO08iYYShFuG+SiPBY4AqqA3RL+g7JMMHm0w19KXxiTkWUxdbDBfMEKL5ILDU14h0k8OiUr3YbBVH5T6aTY2L9j8dbuwGK5MTnalFzHiQXColGUSPeMG+MpeGVBu6AAw6TcJOxuj3Zgd3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754779794; c=relaxed/simple;
	bh=KVDv1yaqOA/Ilg4h8P8HCo7hDYEtk3D+flBgarK8/Y0=;
	h=To:Subject:From:Message-Id:Date; b=D8qml/nGzwnVVlj+aOGyWhQTSyBvs9pnA5PWUptDivU3k1DMZmv9Oc5tNyNgI95W2r/iFKrftN/NK1jhlHgfBF8MMTIHAmC6Gtb4vF/d6PdsInFR0N7RNQvdaxrFHGr3jwlX6IQqV2IjphdhfMQ4A/iGXTP6C0qcQfwqU3mH1BA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LabYSpmz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LabYSpmz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4339C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754779793;
	bh=KVDv1yaqOA/Ilg4h8P8HCo7hDYEtk3D+flBgarK8/Y0=;
	h=To:Subject:From:Date:From;
	b=LabYSpmz97B/uMv2U3T78JpYvTl7lCEAy/TVO2p8iNBKHugVhRIaaTeYF2dgsspss
	 Gk8/MmWwCrwrAtjWx86s9UANyzUoYHUgH6qRsbjwnUvf1pNR60uv3Uj8nVmEDXKTyq
	 xbXIxPjbXsBRccsiMHQW+TmOUovTSGBDeJoQG/hu4RiL0sKORpgZMufvLO+SWAhM07
	 o8KNWQ3FJ6qnvZHE63z2SJ1vweOpZtDdL2akypJbtoSbpbvQYXqCUWEteHcZKHrpZa
	 gkjFys+W/6b0Dfj0rrZXY1aifPRPpcck2crRkYlSMQiCrgRtyvmH3fLtYGE2GGeQM2
	 l4PL7vP9/1vNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916B0C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175477979357.27797.3024497591127224668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcda4f3be3191050f59534d21c9d08b80f1bac28de17922be670dee60907c962
Date: Sat, 09 Aug 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754779793
