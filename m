Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2921990B7
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 19:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739562535; cv=none; b=Zl+Jiyd14ZmQNw9s0tiFf9GZ59y6PX+ETEH3B+20dNBS2T6EdcDSTt2ho/cGt6mapZ0tOGPhqiDtW1LYsDPTZova5HvDzN7Otq/tnvcfIieVVbm1ZKhbe5INbqZ5/2LKXdMFbZdHlJYyt3ZbZ9IzbTS/1DWoiA3TxDh0wsoyGd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739562535; c=relaxed/simple;
	bh=+bjwzubljI6DlU9zPiXgAqeezijb+1KN+yixPAAvcqg=;
	h=To:Subject:From:Message-Id:Date; b=kSRqwDj2YjOaELYl/LNZTz4b1NWItDl8NV5mMlDITzvzFE3Ij+F6kFWlY+r8i/j82+uts3nFE9HE58rpTuaRrDXbXB1UYKV+LnfrNyvvpEH4CnV0h9nzwoviLGZkvNw8eALxWe/BEMs6BNsxBi6WE/YiaIHOFo4Dq6+Ztuu2f7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JyrVZ3wR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JyrVZ3wR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AE6C4CEDF
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 19:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739562533;
	bh=+bjwzubljI6DlU9zPiXgAqeezijb+1KN+yixPAAvcqg=;
	h=To:Subject:From:Date:From;
	b=JyrVZ3wR8AAReF6U5VLjlzvKFJJnhJa4ZjTNlHAl4ZRUDDeA+J8naixoOQ6Vj/f+s
	 O9H1nlKWgq+GnBMDSDOnsDFc+o1CCzjJUZmMJgnVmq+W8IxA4pi4RL01LmEp5KzIj2
	 9/4MnnodXiDnehm4E1jZ0uLXLX89sEahBAOpiGQbg7gaYdkwJnnqxSe2MjbPnJGH4J
	 a4s8EJlKRZG1443ZCiTcZwkytqgJRl9VvYM5PzNh/PRTJHa8N30jBaW8okJ83EqaDx
	 4bNZcnd9zKgsQlyCSgIMC+3yg6O1BtQXZQQv4s0CrV0PQETku7iujnGVrZKIfvjgcc
	 fE8ONT811f1dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A57C02198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 19:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173956253359.16178.8587193866673347890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ebf987e672460da053553db0133423bcb948c8972a189c61352793f87c99094
Date: Fri, 14 Feb 2025 19:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739562533
