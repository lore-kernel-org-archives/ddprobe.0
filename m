Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 062557F7
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 09:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CC6CC433D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 09:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671268887;
	bh=+HKyi+Bf8j0wSbRpiBJu4ZjjfV/FmA0NcuZ83bch2tE=;
	h=To:Subject:From:Date:From;
	b=MJZ6WBMUodxqRzNjgFDx8+/lXdbEQW4fHGZR8seoXyXuK/I9FXBMNyUfxfk9VVl9G
	 VZWGXrrFdEiQHFUq7HFeh5XId23Ah/DOeUSbsoZyaMTfVKB7mGJLykUkFiSMEPRSVQ
	 VDlTHNN9BXjNkZyEB8bmY8nfgfNh/zM+qucrqYrP21E2O2kC7ZVHe7jQZ3TbWWAIfp
	 IZN5PbGjS7UlE99DqYhaefR1ABE3VHL3fOalpyD8JRS0EoNRQAAarHUOKdXvxsWAcm
	 +33/2B1WOVTmfLI0U+mZNLgwhr/dhS+pvl8EJmb7hTMT65x2O00tQeTlcYXww6+udz
	 v8GVTUxdqrAaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71881C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 09:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167126888742.7542.13644120897332258222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74ec5bf56b16e2373c04e9f870d7909e8f45cbfd3fc9c752dd2e326fcb971cb5
Date: Sat, 17 Dec 2022 09:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671268887
