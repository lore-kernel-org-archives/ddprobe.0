Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0486420E0
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 02:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652408039;
	h=To:Subject:From:Message-Id:Date;
	bh=u2xkgmuKCtTpbycd9NtB5/5JLby0YKlRZNbz02FhPL0=;
	b=ZxYBOpa2ty8v7WlXmaE3JJNXwYNUrBsu0ov820jvPuSzXGcA+YRLKeSDXesxMEF2
	LSquiiEsuOOOgK7qQwnzIbz4ZPYWZJKqYfKuPd4526dPihWK1gs8P30D+ySwF6R0aSj
	l8r5bia/+zx/UXZm6b4QQMWjEc976MJC/Xoe5m94=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652408039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u2xkgmuKCtTpbycd9NtB5/5JLby0YKlRZNbz02FhPL0=;
	b=i+Iq3rYSB58rzkb97MBmHzesFcUsajO1zPdLJnBj66WueiQfSRQzl2o6cshMvm21
	wPCkGxX0MjgYeTwW61mLuuwzpsNp0zYXugAUtzeyUbJIwt8gFreMg0U/2kqbN9y1HFh
	rezTs8inthsRb7LAmlzGmmNpVXdGV+85q0Erqbcg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bb31b76f-6ed2cc20-fb19-4aae-b64a-5e5446e2f906-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 433f4e78a9f472cc65cf5134240c95fb319ecce4fd4c134d74a822018cde8909
Date: Fri, 13 May 2022 02:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652408039
