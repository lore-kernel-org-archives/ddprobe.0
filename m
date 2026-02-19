Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 115BA148850
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771473894; cv=none; b=Sfg2jlRpQq/c2jOZVlku2WuqCdkpj6QWpRK4zyhenwsQVjizmxE0Hmq7t0EqLg1w0JmNMux+LbHnDCfqy65nv4kaxST4YiA/x2wXzazqMVkhqPl/d0cMHqfsTCNHc7RXPXaL4a1qrqLRJzSrie6cxZIQUj+aKmmA9rtY8PJkIhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771473894; c=relaxed/simple;
	bh=0JU8E75keg7ROb+YE0US6HzgZ4Xj4Lbt/QFKG70MdK8=;
	h=To:Subject:From:Message-Id:Date; b=Eumw31ouySXnm141BnnUgnj2XVJ2Ak0n5LM1opJcke0vDCfqWelcYGjhZ8Pvv8LH1qxhLWlWJ7vKAo3aGtRyQmw6HciUyA/tzbizdSKRJB/eWIJ/TGWClZ8XMXgjOjLM5ejRyBeSU6qoz4xMqHTvBjn6oSZMV6XqCK+ZBJboRXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OdEISEI2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OdEISEI2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3665C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771473893;
	bh=0JU8E75keg7ROb+YE0US6HzgZ4Xj4Lbt/QFKG70MdK8=;
	h=To:Subject:From:Date:From;
	b=OdEISEI24pUlhza4KQZjIciM/aWSDDMxQG9aHfgvKwIHLsdG+mg3KTZxZk5Zfl3r0
	 U9a1CvdF6lAJvDGdv5IH3LIf4KNzcXEUhzUpq17hiJHqR827MnQcKCZ9mDBmwZGfPP
	 v9wjhf2YnmzJN79VOOhSjPFyDJMiPgV/0+l/He/ywP4pmqacbz4xThMPn6JEkGDKxP
	 YWeHVu0CXSydZa5CZLnFnYwp+Au8booeFX3jo4m1cb7Y7rIMGK1ckhso/iD8xN8c00
	 +e5xNDlEUc91a48TfCraUmtaiEEjEweTks/dfHZYJf2FBhIhroVzBMneYV8tRDWBHY
	 DE0m26CAFSN6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EB2E9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177147389358.22851.7789091645295025031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d09ce73a53fe15433aa56ec32582e53f6345f8fda0195153c7d1083171eb8f9
Date: Thu, 19 Feb 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771473893
