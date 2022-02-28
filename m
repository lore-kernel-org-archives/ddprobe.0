Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9770D7C
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 23:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646091984;
	h=To:Subject:From:Message-Id:Date;
	bh=XiqoVT1VqP6kWUXCuLzo9Fommoeihygp22xcJP8bz3g=;
	b=ZuHcvXGNOKFF/0eJuBxY6kV7C3vbSVf/3v7pxlQ/lvDq6RLVnATJKJDlseDDGzme
	8HLatfgI52yTV3VMk0kc1YZRBOUO+3P934d8yuawwFAfTgYmEOlEWOqa4Hzb9q/SRvw
	bXRVUtA3VyEkayOmZsMtMibPlS7smE2PTBT8ToVQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646091984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XiqoVT1VqP6kWUXCuLzo9Fommoeihygp22xcJP8bz3g=;
	b=IkmCj9+EJcQ9BpYBF4TcwRiVBQNYjQwUaByaflDhT55TutoAL8E3tuyw7X3957De
	uVcvlstA7Von6QmM5BfQ69yO0Jctaq1n4FVDhjG7CijI/iVnwsxvPILqX7Fyj/77O4q
	ZuD1+PC/mZZlhPQmSQphlqXKCY2JBoAgqdqERquI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f42ba5f64-78caaaa1-65be-44f3-9f4b-d7d4a009badb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e202ac98898a9fdcf6e843d2bb92009e6681e7e425ac0ca221805c04f8b41332
Date: Mon, 28 Feb 2022 23:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646091984
