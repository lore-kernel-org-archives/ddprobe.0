Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B686C23C2
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 09:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652173920;
	h=To:Subject:From:Message-Id:Date;
	bh=hpbzsb7ty15Fa6l7Sd4uENKESdWmD5E0JyR2Sbcb+Ew=;
	b=OjWKtcZXIgcLtYRKzqRyH9wWD6p0yzj1zP3wCP5B4+1xxcQ3UgX1GBW7/T1uYx8+
	CyrLurd4+DV84BW7KCr7PaWe7Et0NzmLgWEBx8o2rT4NfefB1esC9NbdP0CjaUByaw5
	zzPJWgVIWJ3/M9p2RbEt1clPi4LBvo9NHcXwtcRs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652173920;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hpbzsb7ty15Fa6l7Sd4uENKESdWmD5E0JyR2Sbcb+Ew=;
	b=fgXd3zziDQcBv2+155DY9T3rgBYkssamB3dTqeQWGnk/FBhQ8EJ+0d3/M7mMkPP/
	YzLlyMgLdJdf+q5rpB6CQwPa7Fi/Jx4fC9PokHJYQ0NGi8LpHq+MIUdshuxezU1ARXl
	uaBb+xO/RHHrqj7got9Zm0Dg4uDR7myAFwuKBRjI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ad3d542f-ccdf9f7b-3582-44a9-899b-9c9fe0146f7c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 17b66e0cd9e5721f7793b4711c3f8a9b50ffcde5238e16d477015fc6b272b0a2
Date: Tue, 10 May 2022 09:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652173919
