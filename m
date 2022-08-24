Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3B2D7B
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661321452;
	h=To:Subject:From:Message-Id:Date;
	bh=nTKsDKp22oSbwJlO9vjXDpjU+8eZNHuJL6LUk3PCLr8=;
	b=a5jvcP6nm8hMIBymaKVnQSVpg4RHhKwskXINkv2rUu2RG8Y2OmIG4KsaxuSYUFfB
	Y1NLJa7Kj+2hDfemk6kMNwR6fsN+XfgHV7/q49+p1w8fx7V+tOhrVPg4pBQNgD4Pofr
	myIv2qOf/EWNQcevcADHVbe5TdTw/SCGfWa7P3aQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661321452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nTKsDKp22oSbwJlO9vjXDpjU+8eZNHuJL6LUk3PCLr8=;
	b=O5kkGdnYSxZYhW/1fK0bxnq8ZT+y3gy+dMQiElgM61EEHlcln+dD6Eh404hwAEO0
	vf8sr58UP9xTbu7b2AwrZV7LfkdXUMUK6SBY0UHJbvWepbb8/AhNqm+11XQtOmt/oQo
	5IpyvNlyfU3W0tNaC6Gl9yvYniRjHJZr0SmJqGjk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ce799bf2-4ecb4ae4-57ca-4255-ad16-c87270b04d35-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a48459c3ac00fdac876ac0347cba4d1ba922f47f02607b085dbd4a1ea540a78c
Date: Wed, 24 Aug 2022 06:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661321452
