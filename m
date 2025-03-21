Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 503011E1DF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742551794; cv=none; b=bUYY9XbPpafM4IYC2HwjGzlyFviLmRsguewDngTUnINZy4CTaxEzaMkogBglKdTl4/AGi3gPjABKJLHKCGrwKc3p8iMo9WczLS0GNMHvbFJ+rxWg0wc+FKxo41fR88ZZfreSM7oZc3bU2+c3BTZLJypXcJvr00Ky6PIfoXXCkuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742551794; c=relaxed/simple;
	bh=hRiM6hMA36oiN0TG+wWDll5+KO7UzoQOySBH1ooS47Q=;
	h=To:Subject:From:Message-Id:Date; b=XP1V8wco2l1i/2A17KGc7rs13rrqHaFxpIomo6v+n1HwesIwlgAy8E/+fV+Ka6mYhgl33+PRO83M+YlQonJ9Kbn6GJ2uOo2OGfEmeJ3dgV2gqfeoIHY2jGesiIMqDP0rqM3N+nyutxidhLyjEkkSKeb9Z/9SNHfbKmuVj34QF6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LxR7NkqE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LxR7NkqE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF886C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742551793;
	bh=hRiM6hMA36oiN0TG+wWDll5+KO7UzoQOySBH1ooS47Q=;
	h=To:Subject:From:Date:From;
	b=LxR7NkqEPAW7NS4OwAv670tvUTZsiNbz4shjBP5Q8pXhZlI2pv7LTu52Aq/A3NUKh
	 KQKGLt2jrDTcx7EF1c9PLsbKx3XSB1SA2D/XCcX+jrLWVA5xU8La9EOUXtP/5siHFr
	 lDwXMk4CzYPBdEsG0EHQ1rnGfUEc9Rtg9rIeVo9Hn/tL2lTKkDUwuQOTOOJP99Y5IX
	 q+3hEKXt5tHcJdGyNZ7NpiS8A/Qz2VihT+DHfOrG2FLQ2jZOxNKeMJmuP2EaCOyanl
	 UY+8gmVcmZ+0qYqtfYKkymQpRNlPAYSqfauBkMJHBb+aoqCEcVw+aveNvnBuyZieCG
	 ThWDtJSU6TDhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C00C36000
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174255179359.15584.541522425437444808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6a4aecd116043e7fb8c4560eca0726cacff098cf777f5b504165e68db4c2b47
Date: Fri, 21 Mar 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742551793
