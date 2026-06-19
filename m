Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B595396D09
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 14:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781879194; cv=none; b=XBSIdeS3ct2aMk09fqFSVbc5x6mgRUC4RgjoUmvZqHd2WqC4o3icu53H9SA2vXf/hEAUHCVuIeM1O12RdLiPNCcmM0zFqft1AKfqK/c1glD4dTVnqHJqp6SZIQT2C7kdfrxi2sd6188M7Vg+sA+Q0QvP7zHVZrAywz/pfgGQelA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781879194; c=relaxed/simple;
	bh=cJsHW11m/yZUESm3lBrrnJ/ekHLfoBU+mXmXV9bo7ss=;
	h=To:Subject:From:Message-Id:Date; b=RFpkU6CgOME1P80dqEebt1tLJIUBllKY3BQ2S90O/Xe1jTzmX3BoTVFh4fi68iVgsYdjAlhgtj3bfk6rd2LmqomLXd1HdnYMulDeRm2mDyRBycLUIiQOEUrs2i9nRBwGdoDckVkttqK/3qGFeyM22Y9kEnC1ONiPRfHu6O6FZVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQzCKAz4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQzCKAz4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE658C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 14:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781879193;
	bh=cJsHW11m/yZUESm3lBrrnJ/ekHLfoBU+mXmXV9bo7ss=;
	h=To:Subject:From:Date:From;
	b=XQzCKAz49ORf62MydUIBYYE1iy94iIU9aIq6Ph3KPT35dImx8IlDf5vi6KA+a0GB+
	 ZNDOF/uuH7dXKazd2ybrHJhIcssNF2FdofU81kCOR73WyQIP7FfBI29pXxhaUBFj3O
	 RW2n03IvgmhLhW/32FfcfEPaTn6qCe14Fyrrpg7Pf3+vFPEuF/SrF7aW+7bGOHZKRo
	 /C7RoP9US7vg/h2Ohqo2aO0G4sGLFeHPZkFkzTxf33lOPUNZvwfxQCaJ3ngqkJ8w7Q
	 xiMuPs0pPqIVhhe9TtpLCYxpSXzwqbALlrtQ+7ogE/9YPsaJwF2omDHLDa9fUV4Eos
	 NyPAR8rgEoN5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4304CD98F2
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 14:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178187919372.10067.3089354764553548529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e50619c6d78b9d86f8f610215894aaf2d99695483ea04825ef3591bb6d297419
Date: Fri, 19 Jun 2026 14:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781879193
