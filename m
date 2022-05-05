Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EA282F2E
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 19:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651778038;
	h=To:Subject:From:Message-Id:Date;
	bh=bSlQJcdbzlUZVwZhNQWrBcKW6xs5swuQzcOe8o+Kwyw=;
	b=MjGzN3NUOsUaW1RHZj9AAgcxBQaBE/CcMJro6ajE0oueq0817w6FPdnas3+lzfj7
	dbffZo+W8VrThCWQlo/RdMOg4hdXAzMvyZFOFWU/5mf0E3P+KPvEgKqqUUvEIGxmQ5a
	UPB3lAOcBMiA203WUqzIEjBpjOMg7qDybdEE8lGw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651778038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bSlQJcdbzlUZVwZhNQWrBcKW6xs5swuQzcOe8o+Kwyw=;
	b=QmiGBPc575Vot87/oJ+6CFUsB82vCFSHI/efAfaJLqftaPa5VzcpqcJgH7BEEs0/
	/rfh7DDXMgCUVG7xx5znWF/RK9jh/IbfpGHyfRh7mnRqjckdg+OrLnUKH4avm6Bn9Yi
	3KubXbCPStF6dhacEzR88YEWy6ee452HGOh90Zrs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018095a4aa2e-fde3ba12-075d-4f4a-8218-5cd1bfa60d81-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8949a5eeb3251b8e3737d15f2c58aab09fed2581f1d1daed1569f5a8be8341e7
Date: Thu, 5 May 2022 19:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651778038
