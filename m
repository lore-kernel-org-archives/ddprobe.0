Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FBBC397338
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791587434; cv=none; b=klNccXRWEeG+TorTZYUpa7IPTryv18gIUWkGjT7qlWy7+xx1NULMLmQKsLh4b25+dlCuB+yyZqVQK67ayjKgCPKziZjfE9v7fMeALHvjjG+ryLp1Lnq7oWtfZpRgpenNHzIXwHbAMEjE9yHgeOIYzHHa2AwS9OVZgfevwAqr9Bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791587434; c=relaxed/simple;
	bh=ww5ehOwJp+pTStTelzKU56hPB8DI6/+JAAfU0QV9kc0=;
	h=To:Subject:From:Message-Id:Date; b=WZnUfG9uXB5JRb5BMgmFJacMiRHV7VTkRzlblmFaycl82Y0k0FVDNkxZJ3dKLJEKa8E6phFYGIWDhB8VzPenkEBXzJ/wndrd8nfLi+MeTd2lQVDKrDm65oktJ+4d9hNrgrLNlRGlTRrYbXdT7kb8zugPrLBWBYFE9kQs+4MLPVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a/F+PNxq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a/F+PNxq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2297C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791587433;
	bh=ww5ehOwJp+pTStTelzKU56hPB8DI6/+JAAfU0QV9kc0=;
	h=To:Subject:From:Date:From;
	b=a/F+PNxqlaoAJtyqqEAaYQX9q/+XV49+QtnbjjdvLjv4aij4xQAWbYqLplToB5bQa
	 W2Aohhn9+jyg0F1zqoHPHU5sYQc4jqvDnBH0ZGZGhlXisEcUqutISMf/r4pK63Qsy5
	 SNa4W29yyEY1lVJfDS8/dw7mXRz1ROrC/Bmgl3dK/Rb3pPcx5SX2ytF8O7xJyDSb0h
	 /uCdtQjF6JJBBmdyR07QZY9TcYhTqh5Vg6g9x6I5xwJraTjqr2SBvU/5Ib0FuoHoCm
	 C6utTxFfqQ/y5m/aa4W5GDjkcGDit/QFF1X2UP3VaT+q7NbbqzwgR7uepRyQxonfNA
	 SqRlqQzhv5KNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93A1CA9EBB
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179158743368.17997.6919168995899656976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5382f1a3891585671d8529bf4cd1aa538ba520580245b1def689bdf1bff3935a
Date: Fri, 09 Oct 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791587433
