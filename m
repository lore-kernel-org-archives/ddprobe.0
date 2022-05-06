Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75AE07E2
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 06:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651818298;
	h=To:Subject:From:Message-Id:Date;
	bh=RkbuInmlz5aAsnjSuGsuI5batbWmJPxZldv/pnOkOQ0=;
	b=MUK9f2pHSsXdOZ0kIzXm8yetmJUC0foWttd8ab5TNs+ibyoaoHaIWVIZ9W4nBxJ0
	3S8EKUkX9LEErjEsIWfBp51NVKZRQWQfFfJKyK9RP5x1dTHCcoI69jfd0xMg5B9lSOV
	IagkXbA3IC7CeOMzIVq1QHJsG6cYJIkUUTHSN+Fs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651818298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RkbuInmlz5aAsnjSuGsuI5batbWmJPxZldv/pnOkOQ0=;
	b=kE99r0YMMIrmgem6Rj59vNhXb7YxDlf9dC5Jurk7PtXhB+EGTgxOqOanWoK4OpW5
	+fFY3f020y38Ose2bG6nSIm4kLj14aq+V+AAJtoIkFtsO1z7BPehe4DLRUQ647bRAof
	nmmwnugAUmk/iuyJfD88/dMvm/wHuOv296gk764o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180980afb7a-0d047a96-928c-405b-bb87-0bf4da3fcad9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 319fdd45b26bd0b74a9bfa4beb6034f2b733cca4c87c5c1f5b0c3f317fd1e689
Date: Fri, 6 May 2022 06:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651818298
