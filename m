Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BCD468D
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 01:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649727178;
	h=To:Subject:From:Message-Id:Date;
	bh=I3GLEE7a3Np83kjyBT3j3sywu2TRbIWG+2wCUqK2W7g=;
	b=S2grDRVMKFNtr6bwVd9tFcLZNZwlKxZUx7xMcUF9tCPz+W7WRJckckTeHmz/L/S7
	3LPFE/Q9RpHveNEQDXi9KXkKehtN1wtb+fNqg9TYTBY69427C/kj0OFL/xPGUReIhdA
	PK2jrEfoaDpTKChz559zUZoQdzfr2WUgo+CjVG34=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649727178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I3GLEE7a3Np83kjyBT3j3sywu2TRbIWG+2wCUqK2W7g=;
	b=BXXhypYScyadwQbrHPJlOkX2Ok8ERvCzL8OfNCCLDEcrqYkQXVI5Lpw5PNg6Bx+k
	huJ6l8wVlvnjSpPn0PAq8B6i9msQuqEySK78Xx9VWfAX2MSWNMSjhV9Lx1FNOr+Mumf
	UpjZZnuQZMFsPGpzyyoujoxjoFV0nGNaiCUJMo1k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801b67060e-77833e68-a769-481c-ae80-fd1c29619bbb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 50dd4ac921055b97d76d660179d2f0be84f694427186b46aa338a7edf4f26f39
Date: Tue, 12 Apr 2022 01:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649727178
