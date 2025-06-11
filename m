Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE3628751C
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749647994; cv=none; b=uUXmKA3+ZJEQNCOF+PgTEHq4R1wCi+BM3EVK5TCiPTq5+X/nB7mXtDG2j0JwxPyMXqt01ry+8ipaOqAeU4doPBXd5GAwHJqWHZMrW0uwAjtVUZnhG37iYChnmDSXPORg0fUxQsqV5xvnCO5C3keuuG2TiMb1LCI3OFHStRrN1z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749647994; c=relaxed/simple;
	bh=ZiLrBRIjRaxlVYQWHhR8oN+D/D3qfmRR9m+4tvRCTPk=;
	h=To:Subject:From:Message-Id:Date; b=Qe57QwsvU28Bqh8iyCfV/TIMcfJsDCo+XMe3wEp7+mbtVvxsWcWhWQAZ6u6zDlUSBJwvlUaXA+JaLcYUY7TbVwT8OObTksX+9CtsrA0uzY++OQBT4jOf4ohywzcoNxd+qSmMCZgJSSfsdUtHEi4XTJ6zkgOuvu1vBRJgVJS/cqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X+Qz+bLn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X+Qz+bLn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2263C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749647993;
	bh=ZiLrBRIjRaxlVYQWHhR8oN+D/D3qfmRR9m+4tvRCTPk=;
	h=To:Subject:From:Date:From;
	b=X+Qz+bLnfM9Qj+iwf7Ueq60v0PBMhfEA7lC44z1cvsJ1/pSSSpMkMBGyjYIyzCE/5
	 9TjNApBZa72U99ZD0qdYQU/CMIAL19i8OA8VUMyWwdi6p0wnRmW9nuQr7A+bsdYU4L
	 ELv8Pc74HF2tBWml2oW0tPwWOF4i+jCGxMUZpqNeHcb05RrBXXQu46b0+hsT3R41bd
	 3PhG1wLqQwVjCmqbelvYxLc1k+kmK8yh/L17ACeavp7+MXwWcaSWg42Kr8mJpi/iui
	 ns1Xt9l/OPgz8MJmsjn67S3b9U8c2QaNKzE0HlGq6DF5SnfwDuylIbUpqb5uAkdz9Z
	 ER8LFFmeaYYgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9170AC677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174964799358.24724.14100503307321935832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfa96f6ad461be182461f5262e67f4ed39df8ed6f8b84c53fc60818c7aeea7fb
Date: Wed, 11 Jun 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749647993
