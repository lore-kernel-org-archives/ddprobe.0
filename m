Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD0037E
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 07:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647068484;
	h=To:Subject:From:Message-Id:Date;
	bh=JuEEJDQ6r7VfwCLV7Ff/3btFUN3M4rIvtp06v1zsCAs=;
	b=Yf00GD/mb69Qq19IAmdoqtzHcY1rDqYHVt/j3RHkF/g7DCK65959dlWN6Q7scNl3
	xTWBonFL0lBNaDBDhfOvQdFv7m68dNI3aH44XWPJKyB/uKc6B/DKZlPTyavEvITUDf2
	8qs/WM+7di1kQS8QrSBWRkVCnG5N7NZ7NrQ21KZw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647068484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JuEEJDQ6r7VfwCLV7Ff/3btFUN3M4rIvtp06v1zsCAs=;
	b=HXNEf/3M5Le8Xn1SjutqbgGSVbkg5w8KnJpQoeOhY8Y9UdYkPc2Cip1Gio570m+V
	CCc7oIRXWSWi/CDkBe9A4vwVdI/SqQ4ZSEo9+s/BOpybndVcg+cmUwLDucLG3ln4Gei
	f/S1piptzu4Ej+puOnCHnZBDGh1ZwqyxHQs5qbC0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7cee9491-e21d3cb4-c7c1-467b-899a-a544deceeac4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 04d9f360bb96084f75be3e5634962a4768c475fd4a8b70ed83ec298808f7a3a4
Date: Sat, 12 Mar 2022 07:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647068484
