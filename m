Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11FF317C3
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 06:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657692412;
	h=To:Subject:From:Message-Id:Date;
	bh=neDm28xKkN2zwVO29L0DzMbfnTxv/71P/BMw/u9Dekc=;
	b=QkXXzfDQlzagO5ga2W+QQ8aEUWWzetrvulAtf9+SUuZ0PtHZKFYBF7Ua/OZIypLU
	HO5Tx0Ran3KXGCE876VwU72EP6d2xcoRO+RRmk7oUzgve0QeWpgIfS7guaAACVcNqOX
	vNxpbXVFPw1WD6pPjVgwp0V+Fedl9I9jOgqpiuS8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657692412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=neDm28xKkN2zwVO29L0DzMbfnTxv/71P/BMw/u9Dekc=;
	b=FqJBqq+W67B1iM0sVNc30yb30NceqLgdsUaWMiit47tp2E84up8NaX4ulN4hRLIc
	5XcicKTW7AA5EUUyjpKFxflpLo4Jn7H+X58fg4lUjDBdvxjzy5eOXblht8NROcEGGK5
	sEybx1SAvZIBAXcO8mJhiD2n/1dhcy3jpE+f0eIM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f62ad975-1af56b7a-960e-4398-a35c-02339e029fda-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab0f47ada379dc81dff247775f319e3fcc5169d1eeb9ee79a8ef99cf6e0a95c4
Date: Wed, 13 Jul 2022 06:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657692412
