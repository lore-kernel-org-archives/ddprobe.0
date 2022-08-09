Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6169A4428
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660052452;
	h=To:Subject:From:Message-Id:Date;
	bh=bwl5cpoRzNqgm7UA6q6uyoOpjN43vBwMwrlqqAYVu7I=;
	b=P+XmZLGEeaFfuXZ6zhAhyI5UZmpenXJzt2kgK7ssTfaZpLEN/eAsV6zVkqfyk++8
	V+0e3EAH+xSWGEPYOzh9r5FFzjBi/JafPrJXPkS5kgIe0b6B1f9M96eN0MOFY5Su1tK
	H30976BVzFXHVq3OcjQjyEQ0mERj/AHjkFUMdNgE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660052452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bwl5cpoRzNqgm7UA6q6uyoOpjN43vBwMwrlqqAYVu7I=;
	b=h/uYMVIXRbRmOCRjqVu1WpzGIYiXZGsTW2qp2Biq9mFzuvZv5nVh5HDxARa9frGb
	hBkDrj0ToxnLw7fCzAo8L9T2xfWMy0GnEmUJBYk36BNAjzab9Q5w5ORvb3MUj2OybJE
	UwWTHkLp5olHU1IUNGiiMvjecrERZMuMMknbPXgg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018282d634d4-dc6ca58b-dbc2-4611-ae50-60c04b327eee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 094b2174f49223378409d54953549ae0e8b1574479148fb8c167c56180abae05
Date: Tue, 9 Aug 2022 13:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660052452
