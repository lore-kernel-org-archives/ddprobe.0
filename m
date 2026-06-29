Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63BC836C598
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 12:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782737914; cv=none; b=N/zx92uJzhFQzjwNmSe/c0fEWEim9YtA1AmlK1QqeMb4KCyNjFyLZrQHDUJdj7ot8B9ain3x6fglC7CowzAjNHJeozSAifuxLQyNGbh4sCYH0bw0wFY3Hj9qfwcc8yTpDLTzKxN3IECdWQHcmRy62UMH9V6kSVO3shLxQIoacSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782737914; c=relaxed/simple;
	bh=Y/XE51m/ivQXwGxeJ3Lt3wuQS2OFjkpkyqu+C9wuPbc=;
	h=To:Subject:From:Message-Id:Date; b=YQwLQluZ9daJKqGw6IBlrfPHWnVQVZbFgkXVoGJDGLnday6kp0zx4+gCIMkH8rE9wtSrcKJdqqvmnjg2oqgbVM+VDXiwdVz6EkhNi3EGckxH5BJLDv6/6xWdaojdR9eacYmfVb740ba8EqRiOdXvS7z9mhAc8zwygcSDWksMtDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RIbN8+Bz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RIbN8+Bz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE95BC19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 12:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782737913;
	bh=Y/XE51m/ivQXwGxeJ3Lt3wuQS2OFjkpkyqu+C9wuPbc=;
	h=To:Subject:From:Date:From;
	b=RIbN8+BzFmdIaacT51XQuvwfsfeGbYUui+UymDyYwDmZ7Vp9D+7mhxhSBuzf9tIUc
	 NTJANTed8YSEmURp1nZzgwWP3jO/By26uHlagiQm+lGHmj5e8nLuZIi+3Frp0XaSIL
	 Vf17c63STXqhnkVeDfynEl6Ma9uOXP/RTAskRYcr3QvEIKRJQC+EtgcP8QVJr0slV6
	 Ux25BsFzAf5LcJ6TdqAJILFCiFZaLbIwFr9WlPg3LWXAzUv3rYADFiW7Puyt8u6dAh
	 xEtVN40jOuodPJFVIWjsCfFjLQ3IvK2r9eah0XRRx8EhH6fH6E16Er4PD5L61aVlfw
	 6k+eiX1ldqVcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B52ADC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 12:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178273791373.29455.14660721374506451192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64fa628cd920d62f7b0b08df0438b274909bd6c5125af365396dd8766004743f
Date: Mon, 29 Jun 2026 12:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782737913
