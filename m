Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A1CE5395
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 22:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647729985;
	h=To:Subject:From:Message-Id:Date;
	bh=rW8LhefOCQd0qUXtld0ECDuQIbxFcJTyjVOBzz07Dxk=;
	b=SPYyMKy7Hb7+8F8Cx1ZBWGUgZOtWVKscGQBjq1vHN9PVe1jPyjz3aQku7c6ONGLB
	sQ0tF9Ff2yDSt/G71MUTjEkzizvz/QE+Jb0C4dVN+MXttE0YSHvOwasKEDeKRX/z0Af
	oxO9rD5XJZYBAN7nXfCVeNWT3gB627LvWs9WtVbs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647729985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rW8LhefOCQd0qUXtld0ECDuQIbxFcJTyjVOBzz07Dxk=;
	b=S+gyiTAksfh4Bz0WZnBz8udUbXXf9Qw2HpFfpt5IAdTzMkR0QHx2D1FMRvuynMCh
	3aRkXj9Ep8NsdcFGTOM1eHfwADYE+Bp640jLU3wW5ZXunKg/g3FPd+wIhaqppZ9DXbh
	WLIFmu7I0JRSjWb0Bmsrm+9jM7hihS13da8XNqrE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa45c44d5-312694a0-3bc6-4365-a945-236e2ba1187f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc09ff4a49f978cbcc552ec652cd47649729910a379be881161b54dea06b033a
Date: Sat, 19 Mar 2022 22:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647729984
