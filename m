Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C0D1BE842
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723661754; cv=none; b=omgY64nkMRJnYAHZ7MYeXMqc8eS2KhMQsyYftpLRx1MGYQkZClHi0/wn6QO0B2NsRLtkMsW0ZTcbT2yRAN2KB77DAH2NdfIcSgYghhB2EtS6fhil5oKSSusCQ5BwKjPB+lRev/vUVbYuzd+ZMSJAsq/AqazUxrSd2Lgacb1mpkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723661754; c=relaxed/simple;
	bh=/B0PQQvkWl4n+XEfwqnC3C1r5BV2MROahN9G5u0bFHg=;
	h=To:Subject:From:Message-Id:Date; b=T/t2uVBxUYFaP7CQQjQ10dLz99d2+lyaHkhDJsUrAKfoeQ0Oo7YRpQlixq3P3gurdFv+gwGs74X5brvYEj/N+XDIkRzY2f64R8lj8EZzbbsuB5g9TcSWlEqm7Ha0XLLk6sbhWfBJK9KCHpiGyUq1HN24aPziHaFyK6k1E3yKJHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U3UwWu2x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U3UwWu2x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60A0C116B1
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723661753;
	bh=/B0PQQvkWl4n+XEfwqnC3C1r5BV2MROahN9G5u0bFHg=;
	h=To:Subject:From:Date:From;
	b=U3UwWu2xtocptz6xyWI2t2Ox3jzEx5Q7RgqxFOCkH+qTzzPHLEod8ryPjxkpeXz/U
	 awesRAWcZrK+fdcRIqDUE+0RzE2Eygh1g/qrEcqViaRMTsVwbArMHn+J0Am+zyw1yI
	 Oey9Nr2JxFpdnkP7258rRvW4QhLlVMsIPrY0zCcEJjZSStLL3VXf1iD1FRANfCve1n
	 ORH8E6chYQWhQ92xgtAunfusqcYA6drYeMXD+QU84GDAhDoASMzyZaD94df0YvVsLI
	 ZOvKZw/+zsKzOqQcGmjXRJdJ9hV54meV4yoBlalDYbG1H8TSpIwEzejbqhW6wk2mdY
	 GaGtiTnoHmhpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946F9C3DA4A
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172366175359.8680.1260521845491775199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d3e58d85ac6c68838d976d5aeba92d5c08794bc35000e751377646205732700
Date: Wed, 14 Aug 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723661753
